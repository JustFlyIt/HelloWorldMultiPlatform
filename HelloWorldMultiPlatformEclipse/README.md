# HelloWorldMultiPlatform

Code, configuration and makefiles for multiple platform development via Eclipse.

Eclipse offers the advantage of easily managing multiple build configurations.  These configurations can be for various types of memory setups, debug or no debug and for targeting multiple platforms.  

There are three build configurations to select from:  ARMDebug, ARMRelease and IntelRelease.  The ARMDebug produces an executable with debug info for the ARM processor.  The ARMRelease produces an executable without debug info for the ARM processor.  IntelRelease produces an executable for the development machine (the host machine); as with the ARMRelease there isn't and debug info in this executable.

Import Existing Project
Import the HelloWorld project as an existing project into the workspace.

In the Eclipse project explorer window, right click and select ‘Import’.  Then select ‘Existing Projects into Workspace’.  The process from here is pretty self explanatory.  For problems or questions, Google for more info or contact the iSpace team for assistance.

Initial Test On Host Machine
Use the IntelRelease to do the initial test of the program.  On the toolbar, select the hammer drop down.  Then select IntelRelease for the build; this will build the executable.  In the Eclipse project explorer open the HelloWorld project folder and right click.  Select ‘Run As’ and then select ‘Run As Local Application’.  A dialog will appear…selected one of the HelloWorld executables.  It will highlight a qualifier in the lower box.  If that qualifier shows x86_64 then the correct executable has been chosen for the local host assuming that the local host is on an Intel processor.  Hit ‘OK’.

Test On ARM Platform
Use the ARMRelease to do the initial test of the program.  On the toolbar, select the hammer drop down.  Then select ARMRelease for the build.  It will build an executable for the ARM processor.  With that done, then go to a terminal window.  Navigate to the ARMRelease directory and then do:

               scp HelloWorldMultiPlatform root@192.168.1.102:/tmp       // Use the TCP/IP address for your particular board.

This will copy the  executable to the ARM processor.  The executable is now ready for test on the platform.
