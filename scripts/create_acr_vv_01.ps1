try
{
    "Logging in to Azure..."
    Connect-AzAccount -Identity
}
catch {
    Write-Error -Message $_.Exception
    throw $_.Exception
}

New-AzContainerRegistry -ResourceGroupName "<resource-group-name>" -Name "<acr-name>" -Sku "Basic" -Location "<resource-group-location>"

Write-Output "Created ACR ..!"

# Disconnect from Azure
Disconnect-AzAccount
