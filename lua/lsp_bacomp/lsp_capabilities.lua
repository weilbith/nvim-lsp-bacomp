local lsp_provider_names = require "lsp_bacomp.lsp_provider_names"

local lsp_capabilities = {}
lsp_capabilities[lsp_provider_names.hover_provider] = "hover"
lsp_capabilities[lsp_provider_names.signature_help_provider] = "signature_help"
lsp_capabilities[lsp_provider_names.declaration_provider] = "declaration"
lsp_capabilities[lsp_provider_names.definition_provider] = "goto_definition"
lsp_capabilities[lsp_provider_names.type_definition_provider] = "type_definition"
lsp_capabilities[lsp_provider_names.implementation_provider] = "implementation_provider"
lsp_capabilities[lsp_provider_names.references_provider] = "find_references"
lsp_capabilities[lsp_provider_names.document_symbol_provider] = "document_symbol"
lsp_capabilities[lsp_provider_names.workspace_symbol_provider] = "workspace_symbol"
lsp_capabilities[lsp_provider_names.code_action_provider] = "code_action"
lsp_capabilities[lsp_provider_names.document_highlight_provider] = "document_highlight"
lsp_capabilities[lsp_provider_names.document_formatting_provider] = "document_formatting"
lsp_capabilities[lsp_provider_names.document_range_formatting_provider] = "document_range_formatting"

return lsp_capabilities
