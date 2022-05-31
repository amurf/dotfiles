-- read local file 
function read_package_json()
  local open = io.open
  local file = open("package.json", "rb")

  if not file then return nil end

  local jsonString = file:read "*a"
  file:close()

  return jsonString
end

local package_json_string = read_package_json()

if package_json_string ~= nil then
  local package_json_obj = vim.fn.json_decode(package_json_string)
  local dependencies = package_json_obj.dependencies

  local vue_or_nuxt_lib = dependencies.vue or dependencies.nuxt

  if vue_or_nuxt_lib ~= nil then
    local vue_version = vue_or_nuxt_lib:gsub('[%^%~]', '')
    local major, minor, patch = string.match(vue_version, "(%d+)%.(%d+)%.(%d+)")

    if tonumber(major) == 2 then
      require'lspconfig'.vuels.setup{}
    else
      require'lspconfig'.volar.setup{
        on_attach = function(client, buffer) 
          client.resolved_capabilities.document_formatting = false
        end
      }
    end
  end
end
