# d42-powershell
Device42 related PowerShell code snippets.

- [Changelog](#changelog)
- [Snippets](#snippets)
    - [data_dictionary_one_liner](#data_dictionary_one_liner)
    - [adminstrator_audit_one_liner](#adminstrator_audit_one_liner)
- [Scripts]
    - [admin_audit](#admin_audit)
# Changelog
## Patch 0.01 | 2021-08-17
m-e-w: Updated license agreement. 

## Path 0.02 | 2021-08-19
m-e-w: Added one liner to generate .csv(s) of all adminstrators in device42 and audit history login events. 

m-e-w: Added admin_audit script.

m-e-w: Updated .gitignore to add config.ps1 to ignore list (file only exists locally to make it easier to copy paste config settings for testing / avoid accidentally uploading real creds).

# Snippets
## data_dictionary_one_liner
Generates a .csv of all views and columns from the data dictionary. 
### Instructions
1. Replace username, password, and instance with your own values.
2. Ctrl+A and paste contents into powershell or run it by calling ./data_dictionary_one_liner.ps1 from within the d42-powershell directory.
## adminstrator_audit_one_liner
Generates a .csv of all adminstrators in Device42 and a .csv of all audit login events in the current audit history logs. 
### Instructions
1. Replace username, password, and instance with your own values.
2. Ctrl+A and paste contents into powershell or run it by calling ./adminstrator_audit_one_liner.ps1 from within the d42-powershell directory.
3. To check for users that haven't logged in, you can import both .csv's to excel and use conditional formatting to highlight users with no login events in audit history. Sample formula is included below. Adjust the ranges to match your set.

        =ISERROR(MATCH(A2, auditlogs!$A$2:$A$577, 0))

# Scripts
## admin_audit
Generates a .csv of all administrators from Device42 with a boolean indicating if there is a login event associated with that user in the current audit history logs. 
### Instructions
1. Replace username, password, and instance with your own values.
2. Run by calling ./admin_audit.ps1 from within the d42-powershell directory.