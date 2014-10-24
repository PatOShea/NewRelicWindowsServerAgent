try {
    $packageName = 'NewRelicWindowsServerAgent'
    $fileType = 'msi'
    $silentArgs = '/qn'
    $version = '3.2.6.0'
    # Install arguments which can be passed are INSTALLDIR and APIKEY
    $url = 'http://download.newrelic.com/windows_server_monitor/release/NewRelicServerMonitor_x86_3.2.6.0.msi'
    $url64bit = 'http://download.newrelic.com/windows_server_monitor/release/NewRelicServerMonitor_x64_3.2.6.0.msi'
    Install-ChocolateyPackage $packageName $fileType $silentArgs $installArgs $url $url64bit
    Write-ChocolateySuccess '__NAME__'
} catch {
    Write-ChocolateyFailure '__NAME__' $($_.Exception.Message)
    throw 
}