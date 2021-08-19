$username = 'admin'; 
$password = 'adm!nd42'; 
$instance = '192.168.1.0'; 
$adminUsersResponse = curl.exe -k -u "$($username):$($password)" "https://$($instance)/api/1.0/adminusers";
$auditlogsResponse = curl.exe -k -u "$($username):$($password)" "https://$($instance)/api/1.0/auditlogs?action=Login";
$adminusers = ($adminUsersResponse | ConvertFrom-Json).adminusers | Select-Object -Property username;
$auditlogs = ($auditlogsResponse | ConvertFrom-Json).auditlogs | Select-Object -Property user, action_time;
$adminusers | Export-CSV 'adminusers.csv' -NoTypeInformation;
$auditlogs  | Export-CSV 'auditlogs.csv' -NoTypeInformation;
