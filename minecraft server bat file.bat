@echo off
:loop
cls
color 0A
echo +----------------------------------------+
echo ^|           Minecraft Server            ^|
echo +----------------------------------------+
echo ^|                                        ^|
echo ^|       Starting server, please wait...  ^|
echo ^|                                        ^|
echo +----------------------------------------+
echo.
set "JAVA_OPTS=-server -Xms2G -Xmx4G -XX:+UseZGC -XX:+UnlockDiagnosticVMOptions -XX:NativeMemoryTracking=detail -XX:ParallelGCThreads=4 -XX:+UseStringDeduplication -XX:G1HeapRegionSize=32M -XX:+UnlockExperimentalVMOptions -XX:ConcGCThreads=4 -XX:AllocateInstancePrefetchLines=1 -XX:AllocatePrefetchDistance=256 -XX:+UseLargePages -XX:+AlwaysPreTouch -XX:+UseNUMA -XX:+UseAdaptiveSizePolicy -XX:MaxDirectMemorySize=4G -XX:MaxMetaspaceSize=512M -XX:+UseCompressedOops -XX:+UseNUMA -XX:MaxGCPauseMillis=200 -XX:+OptimizeStringConcat -XX:TargetSurvivorRatio=90 -XX:SurvivorRatio=4 -XX:+DisableExplicitGC -XX:+ParallelRefProcEnabled -XX:+TieredCompilation -XX:MaxInlineLevel=20 -Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager -Djava.awt.headless=true -Dsun.rmi.dgc.server.gcInterval=2147483646 -Dfile.encoding=UTF-8 -XX:+UseFastUnorderedTimeStamps -XX:MaxInlineSize=35 -XX:+UseTLAB -XX:+DisableAttachMechanism -jar server.jar -nogui"
java %JAVA_OPTS%
echo.
color 04
echo +----------------------------------------+
echo ^|  The server has stopped unexpectedly.  ^|
echo ^|  Restarting in 10 seconds...           ^|
echo ^|  Press CTRL-C to stop the server.      ^|
echo +----------------------------------------+
timeout /t 10 >nul
echo.
color 0A
echo +----------------------------------------+
echo ^|             (%time%)                  ^|
echo ^|            Restarting...              ^|
echo ^|           Please wait...              ^|
echo +----------------------------------------+
echo.
goto loop
