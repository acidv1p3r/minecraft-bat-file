@echo off
title Minecraft Server

:loop
cls

echo        ╔═════════════════════════════════════════╗
echo        ║      ⛏ Minecraft Server Launcher 💎    ║
echo        ╚═════════════════════════════════════════╝
echo.

set "JAVA_OPTS=-server -Xms2G -Xmx4G -XX:+UseZGC -XX:+UnlockDiagnosticVMOptions -XX:NativeMemoryTracking=detail -XX:ParallelGCThreads=4 -XX:+UseStringDeduplication -XX:G1HeapRegionSize=32M -XX:+UnlockExperimentalVMOptions -XX:ConcGCThreads=4 -XX:AllocateInstancePrefetchLines=1 -XX:AllocatePrefetchDistance=256 -XX:+UseLargePages -XX:+AlwaysPreTouch -XX:+UseNUMA -XX:+UseAdaptiveSizePolicy -XX:MaxDirectMemorySize=4G -XX:MaxMetaspaceSize=512M -XX:+UseCompressedOops -XX:+UseNUMA -XX:MaxGCPauseMillis=200 -XX:+OptimizeStringConcat -XX:TargetSurvivorRatio=90 -XX:SurvivorRatio=4 -XX:+DisableExplicitGC -XX:+ParallelRefProcEnabled -XX:+TieredCompilation -XX:MaxInlineLevel=20 -Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager -Djava.awt.headless=true -Dsun.rmi.dgc.server.gcInterval=2147483646 -Dfile.encoding=UTF-8 -XX:+UseFastUnorderedTimeStamps -XX:MaxInlineSize=35 -XX:+UseTLAB -XX:+DisableAttachMechanism -jar server.jar -nogui"

echo Launching Minecraft server...

java %JAVA_OPTS%

if %errorlevel%==0 (
    echo.
    echo        ╔═════════════════════════════════════════╗
    echo        ║     ⛏ Minecraft Server Online 💎       ║
    echo        ╚═════════════════════════════════════════╝
    echo.
) else (
    echo.
    echo        ╔═════════════════════════════════════════╗
    echo        ║     ⛏ Minecraft Server Crashed 💎      ║
    echo        ╚═════════════════════════════════════════╝
    echo.
)

echo Restarting Minecraft server in 5 seconds...
ping -n 6 127.0.0.1 > nul
goto loop