• Everything in PowerShell is an object
• A variable is a place to store values.
   ◇ All variables in PowerShell start with a dollar sign ( $ )
   ◇ The value of a variable won’t change unless something, or someone, explicitly changes it
   ◇ AUTOMATIC-VARIABLES
      ▪ you should treat automatic variables as read-only.
      ▪ A few Automatic variables
         - $null variable
         - LastExitCode: 0:Success, 1:Failure
            → Value of $LASTEXITCODE is always the exit code of the last application that was executed.
         - Prefrence variable: These variables control the default behavior of various output streams


• Data Types
   ◇ Typecasting can be done without errors
   ◇ Powershell can figure out data types based on values
   ◇ It doesn’t matter which quotes you use to define a simple string.
   ◇ Interpolation: Ability of powershell to read inside a variable
   ◇ Single quotes tell PowerShell that you mean exactly what you’re typing.

• PoweShell Objects
   ◇ In PowerShell, everything is an object

