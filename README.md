# d42-powershell
Device42 related PowerShell code snippets.

- [Changelog](#changelog)
- [Snippets](#snippets)
    - [data_dictionary_one_liner](#data_dictionary_one_liner)
# Changelog
## Patch 0.01 | 2021-08-17
m-e-w: Updated license agreement. 

## Path 0.02 | 2021-08-19
m-e-w: Added one liner to generate .csv(s) of all adminstrators in device42 and audit history login events. 

m-e-w: Updated .gitignore to add config.ps1 to ignore list (file only exists locally to make it easier to copy paste config settings for testing / avoid accidentally uploading real creds).

# Snippets
## data_dictionary_one_liner
### Instructions
1. Replace username, password, and instance with your own values.
2. Ctrl+A and paste contents into powershell or run it by calling ./data_dictionary_one_liner.ps1 from within the d42-powershell directory.