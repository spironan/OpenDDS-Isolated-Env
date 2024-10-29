:: Program currently only takes in 1 idl file and generate all required files for it.
:: requires to be ran from windows with VS developer command prompt, OpenDDS variables environments set up

@echo off
setlocal

:: Ensure VS Developer Command Prompt
if "%VSINSTALLDIR%"=="" (
    echo This script must be run in the Developer Command Prompt for Visual Studio.
    pause
    exit /b 1
)

:: Ensure OpenDDS
if "%DDS_ROOT%"=="" (
    echo Environment variable DDS_ROOT is not set. Please ensure it is set and try again. This variable is often set through the setenv.sh file generated from OpenDDS.
    pause
    exit /b 1
)

:: Ensure OpenDDS IDL
if "opendds_idl"=="" (
    echo Environment variable opendds_idl is not set. Please ensure it is set and try agai.  This variable is often set through the setenv.sh file generated from OpenDDS.
    pause
    exit /b 1
)

:: Ensure TAO IDL
if "tao_idl"=="" (
    echo Environment variable tao_idl is not set. Please ensure it is set and try again. This variable is often set through the setenv.sh file generated from OpenDDS.
    pause
    exit /b 1
)

:: Ensure there's an input file
if "%~1"=="" (
    echo Usage: %0 input_file [-o output_dir]
    pause 
    exit /b 1
)

set input_file=%~1
set output_dir=.

:: Update output directory to user desired location
if "%~2"=="-o" (
    if "%~3"=="" (
        echo Usage: %0 input_file [-o output_dir]
        pause
        exit /b 1
    )
    set output_dir=%~3
)

:: Create the output directory if it does not exist
if not exist output_dir (
    echo Creating Output directory %output_dir% ...
    mkdir %output_dir%
)

:: Extract the base name from the input file (without extension) e.g. Person.idl -> Person
for %%F in (%input_file%) do set base_name=%%~nF
:: Construct the type support file e.g. Person.idl -> PersonTypeSupport.idl
set type_support_file=%base_name%TypeSupport.idl
:: Store the current directory
set current_dir=%cd%

:: Echo all Required Data and ensure its all properly set.
echo Input file: %input_file%
echo Output directory: %output_dir%
echo Input File Base Name: %base_name%
echo Type support file Name: %type_support_file%
echo current diretory is set to: %current_dir%

:: we first copy our input file to our output directory
if /i NOT "%output_dir%"=="." (
    copy "%input_file%" "%output_dir%"
)

:: Turn this on if you want to find out what command is being ran under the hood.
:: @echo on

:: command 1
opendds_idl -o %output_dir% %input_file%
:: command 2
tao_idl --idl-version 4 -o %output_dir% %input_file%
:: Change directory to OpenDDS
cd %DDS_ROOT%
:: command 3
:: This specific command must be ran from OpenDDS Root directory. 
:: Notice how -I (include) is followed by the directory WITHOUT space. e.g. [-Idirectory\of\Interest] and not [-I directory\of\interest]
tao_idl --idl-version 4 -I%current_dir% -o %current_dir%\%output_dir% %current_dir%\%output_dir%\%type_support_file%

:: Change diretory back to starting directory
cd %current_dir%

endlocal

pause