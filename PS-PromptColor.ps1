function Prompt
{
    $promptString = "PS " + $(Get-Location) + ">"
    Write-Host $promptString -NoNewline -ForegroundColor Red
    return " "
}