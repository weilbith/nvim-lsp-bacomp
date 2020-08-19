local vim = vim
local api = vim.api
local lsp = vim.lsp
local lsp_provider_names = require "lsp_bacomp.lsp_provider_names"
local lsp_capabilities = require "lsp_bacomp.lsp_capabilities"

local M = {}

function M.client_available()
    return next(vim.lsp.buf_get_clients()) ~= nil
end

function M.check_capability(provider_name)
    if not M.client_available() then
        return false
    end

    local capability_name = lsp_capabilities[provider_name]

    if capability_name == nil then
        print("Unknown or unsupported language server provider name: " .. (provider_name or "''"))
        return false
    end

    -- TODO: Handle multiple clients better
    local resolved_capabilities = lsp.buf_get_clients()[1].resolved_capabilities
    return resolved_capabilities[capability_name] or false
end

function M.smart_command(provider_name, primary_command, alternative_command)
    if M.client_available() then
        if M.check_capability(provider_name) then
            api.nvim_command(primary_command)
        else
            print("Language server does not provide capability: " .. (provider_name or "''"))
        end
    else
        if alternative_command ~= nil then
            api.nvim_command(alternative_command)
        else
            print("No language client available for current buffer!")
        end
    end
end

function M.client_provides_hover()
    return M.check_capability(lsp_provider_names.hover_provider)
end

function M.client_provides_signature_help()
    return M.check_capability(lsp_provider_names.signature_help_provider)
end

function M.client_provides_declaration()
    return M.check_capability(lsp_provider_names.declaration_provider)
end

function M.client_provides_definition()
    return M.check_capability(lsp_provider_names.definition_provider)
end

function M.client_provides_type_definition()
    return M.check_capability(lsp_provider_names.type_definition_provider)
end

function M.client_provides_implementation()
    return M.check_capability(lsp_provider_names.implementation_provider)
end

function M.client_provides_references()
    return M.check_capability(lsp_provider_names.references_provider)
end

function M.client_provides_document_symbol()
    return M.check_capability(lsp_provider_names.document_symbol_provider)
end

function M.client_provides_workspace_symbol()
    return M.check_capability(lsp_provider_names.workspace_symbol_provider)
end

function M.client_provides_code_action()
    return M.check_capability(lsp_provider_names.code_action_provider)
end

function M.client_provides_highlight()
    return M.check_capability(lsp_provider_names.document_highlight_provider)
end

function M.client_provides_formatting()
    return M.check_capability(lsp_provider_names.document_formatting_provider)
end

function M.client_provides_range_formatting()
    return M.check_capability(lsp_provider_names.document_range_formatting_provider)
end

return M
