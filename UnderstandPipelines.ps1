Get-Service | Stop-Service -WhatIf

# 1. ByValue  - what object type was created by the first command - Get-Member
#             - what object types are allowed to be piped to the second command byvalue - Get-Help

Get-Service | Get-Member # ServiceController
Get-help Stop-Service #ByValue -InputObject [ServiceController] (, -Name [string] Not used )

Get-Service | Stop-Process

Get-Service | Get-Member # ServiceController
Get-help Stop-Porcess #ByValue -InputObject [Process] - ByValue Failed

Get-Service | Stop-Process

# 2. ByPropertyName - Properties from the first command get matched to parameters in the second command by spelling
#                   - Does the property object type match the parameter type

Get-Service | Stop-Process -WhatIf # Property Names - spelling - match to the parameters in the second command

Get-Service | Get-Member -MemberType Properties # Name [string]
Stop-Process # ByPropertyName -id [int], -name [string]