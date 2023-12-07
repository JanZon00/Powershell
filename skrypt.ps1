#The following script removes retentions from builds of a specific pipeline in a particular project. Please provide the necessary URLs before using the script.

$connectionToken = $env:PAT
$base64AuthInfo = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes(":$($connectionToken)"))

$definitionId = 0
$projectName = ""

$url = ""
$builds = (Invoke-RestMethod -Uri $url -Method Get -UseDefaultCredential -Headers @{Authorization = ("Basic {0}" -f $base64AuthInfo) }).value

$builds.GetEnumerator() | ForEach-Object {
    $buildId = $_.id
    $leasesUrl = ""
    $leases.GetEnumerator() | ForEach-Object {
        $deleteUrl = ""
        Invoke-RestMethod -Uri $deleteUrl -Method Delete -UseDefaultCredential -Headers @{Authorization = ("Basic {0}" -f $base64AuthInfo) } -Erroraction Continue
    }
}