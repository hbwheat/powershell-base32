$text = "helloworld"
$encoding = [system.Text.Encoding]::UTF8
$byteString = $encoding.GetBytes($text)

Add-Type -TypeDefinition (Get-Content .\encoder.cs -Raw ).ToString()
[base32]::ToBase32String($byteString)
