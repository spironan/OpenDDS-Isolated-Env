# OpenDDS - Isolated Windows Solution

OpenDDS is an open sourced implementation of ***Data Distribution Service***. Data distribution Service is a modern approach to handling data transmission in a real-time commericial environment.
Read more about it from the [official source](https://opendds.org/)

## Key Documentation and References
1. [Developer Documentation](https://opendds.readthedocs.io/en/latest-release/)
2. [QuickStart Guide on All platforms](https://opendds.readthedocs.io/en/latest-release/devguide/quickstart/index.html)
3. [Going through sample project to understand how it works](https://opendds.readthedocs.io/en/latest-release/devguide/getting_started.html)
4. [Understanding custom types in OpenDDS](https://opendds.readthedocs.io/en/latest-release/devguide/opendds_idl.html)
5. [OpenDDS Github Repo](https://github.com/OpenDDS/OpenDDS)

## Project Contents
In the Git bundle, it should contain a sample project written in Windows Environment with Visual Studio 2022 Solution implementing **OpenDDS version 3.29.1** with custom types .

### Software Requirements
1. Windows System
2. Visual Studios Installed with Developer Command Prompt
3. OpenDDS version 3.29.1 or higher (without breaking changes)

### Pre-requisite
Please note that in order to run the contents, **it is expected of you to run it through a Developer Command Prompt `(Visual Studios Compiler)`**  and also have **OpenDDS environments properly set up - typically through the `setenv.cmd` that is generated from OpenDDS**. 

The **Visual Studio Solution currently expects you to have downloaded OpenDDS to a fixed directory `(C:\OpenDDS-3.29.1)`** but feel free to change it under Project Settings to point it to the right location.

IMPT: Open Visual studio via the Dev Command Prompt with OpenDDS set
using `devenv <solution-name>.sln` so that the OpenDDS environment variables are properly set as well.

### Building and testing the project
Ensure you have your environments properly set, follow the instructions above to do so.
Make sure to compile both projects. If all fields are set properly, you should compile successfully.
You can navigate two command prompt windows with OpenDDS environments properly set into the Publisher and Subscriber folders respectively and run their executables. allow them through the firewall and you should be able to see them communicate through the custom type `Person.idl` that was made as an example.   

### Creating and building your own custom type
IDL is the custom language OpenDDS uses to generate types on the fly. 
Within the folder you can find the `IDLGenerator` folder which contains `generate_idl.cmd` batch file that compiles the series of 3 steps that needs to be ran to generate ALL required files(at the time of writing, this is how it works but might be changed down the road). A sample is provided with Person.idl to demonstrate this capability.

### Conclusion
This initial progress shows how to isolate and utilize OpenDDS including how to use a custom class and type written. More exploratory work can be done with complexity that is introduced with doing the project in a production ready, resilent and scalability.  