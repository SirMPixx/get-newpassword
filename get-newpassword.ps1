function Get-NewPassword {
    <#
       Generate a Random Strong Password
    #>
    param (
        [int]$length, # Declare how long the password is
        [int]$specialchar # Declare how much special characters this password have
    )
    'This Script write a password in a Texfile'
    # Import System.Web assembly
    Add-Type -AssemblyName System.Web
    # Generate random password
    $password = [System.Web.Security.Membership]::GeneratePassword($length,$specialchar)
    #Write the password into a text file
    $password > password.txt

    <#
        Source: http://woshub.com/generating-random-password-with-powershell/ Last access:10.08.2021 19:07
        Written by: Maximilian Lanski on 10.08.2021
    #>
    
}