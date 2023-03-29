$username = 'admin'; 
$password = 'adm!nd42'; 
$instance = '192.168.1.0'; 
((curl.exe -k -u "$($username):$($password)" "https://$($instance)/services/data/v1.0/dd/") | ConvertFrom-Json) | Select-Object -Property view -ExpandProperty columns | Select-Object view, column, data_type, description | Export-CSV dd.csv -NoTypeInformation
