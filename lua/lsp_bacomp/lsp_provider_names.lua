local lsp_provider_names = {}
lsp_provider_names["hover_provider"] = "hoverProvider"
lsp_provider_names["signature_help_provider"] = "signatureHelpProvider"
lsp_provider_names["declaration_provider"] = "declarationProvider"
lsp_provider_names["definition_provider"] = "definitionProvider"
lsp_provider_names["type_definition_provider"] = "typeDefinitionProvider"
lsp_provider_names["implementation_provider"] = "implementationProvider"
lsp_provider_names["references_provider"] = "referencesProvider"
lsp_provider_names["document_symbol_provider"] = "documentSymbolProvider"
lsp_provider_names["workspace_symbol_provider"] = "workspaceSymbolProvider"
lsp_provider_names["code_action_provider"] = "codeActionProvider"
lsp_provider_names["document_highlight_provider"] = "documentHighlightProvider"
lsp_provider_names["document_formatting_provider"] = "documentFormattingProvider"
lsp_provider_names["document_range_formatting_provider"] = "documentRangeFormattingProvider"

return lsp_provider_names

-- Not supported yet:
-- completionProvider
-- codeLensProvider
-- documentLinkProvider
-- colorProvider
-- documentOnTypeFormattingProvider
-- renameProvider
-- foldingRangeProvider
-- executeCommandProvider
-- selectionRangeProvider
