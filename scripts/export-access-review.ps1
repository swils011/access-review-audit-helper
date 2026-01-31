$users = Import-Csv "./sample-data/access-review-sample.csv"

$results = foreach ($u in $users) {
    $last = [datetime]$u.LastLogonDate
    $daysInactive = ((Get-Date) - $last).Days

    $riskFlag =
        if ($u.Enabled -eq "False") { "Disabled Account" }
        elseif ($daysInactive -gt 90) { "Dormant Account" }
        else { "No Risk" }

    [PSCustomObject]@{
        UserPrincipalName = $u.UserPrincipalName
        Enabled           = $u.Enabled
        LastLogonDate     = $u.LastLogonDate
        DaysInactive      = $daysInactive
        RiskFlag          = $riskFlag
    }
}

$results | Export-Csv "./output/access-review-results.csv" -NoTypeInformation
