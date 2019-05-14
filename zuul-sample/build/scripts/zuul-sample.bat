@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  zuul-sample startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and ZUUL_SAMPLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-DTZ=GMT" "-Darchaius.deployment.environment=test" "-Dcom.sun.management.jmxremote" "-Dcom.sun.management.jmxremote.local.only=false" "-Deureka.validateInstanceId=false" "-Deureka.mt.num_retries=1"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\zuul-sample-2.2.0-SNAPSHOT.jar;%APP_HOME%\lib\zuul-core-2.2.0-SNAPSHOT.jar;%APP_HOME%\lib\governator-archaius-1.17.4.jar;%APP_HOME%\lib\governator-1.17.4.jar;%APP_HOME%\lib\governator-core-1.17.4.jar;%APP_HOME%\lib\guice-grapher-4.1.0.jar;%APP_HOME%\lib\guice-multibindings-4.1.0.jar;%APP_HOME%\lib\guice-assistedinject-4.1.0.jar;%APP_HOME%\lib\guice-servlet-4.0.jar;%APP_HOME%\lib\guice-throwingproviders-4.0.jar;%APP_HOME%\lib\ribbon-eureka-2.2.4.jar;%APP_HOME%\lib\eureka-client-1.9.4.jar;%APP_HOME%\lib\guice-4.1.0.jar;%APP_HOME%\lib\blitz4j-1.37.2.jar;%APP_HOME%\lib\ribbon-httpclient-2.2.4.jar;%APP_HOME%\lib\ribbon-loadbalancer-2.2.4.jar;%APP_HOME%\lib\netflix-commons-util-0.3.0.jar;%APP_HOME%\lib\governator-api-1.17.4.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\hystrix-core-1.4.26.jar;%APP_HOME%\lib\ribbon-core-2.2.4.jar;%APP_HOME%\lib\netflix-eventbus-0.3.0.jar;%APP_HOME%\lib\archaius-core-0.7.5.jar;%APP_HOME%\lib\servo-core-0.10.1.jar;%APP_HOME%\lib\servo-internal-0.10.1.jar;%APP_HOME%\lib\netflix-infix-0.3.0.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\log4j-1.2.17.jar;%APP_HOME%\lib\commons-fileupload-1.3.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\commons-lang3-3.4.jar;%APP_HOME%\lib\groovy-all-2.4.4.jar;%APP_HOME%\lib\spectator-api-0.59.0.jar;%APP_HOME%\lib\netflix-statistics-0.1.1.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\json-20090211.jar;%APP_HOME%\lib\bcpg-jdk15on-1.59.jar;%APP_HOME%\lib\bcprov-jdk15on-1.59.jar;%APP_HOME%\lib\rxjava-1.2.1.jar;%APP_HOME%\lib\netty-codec-http2-4.1.27.Final.jar;%APP_HOME%\lib\netty-handler-4.1.27.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.27.Final-linux-x86_64.jar;%APP_HOME%\lib\netty-codec-http-4.1.27.Final.jar;%APP_HOME%\lib\netty-codec-haproxy-4.1.27.Final.jar;%APP_HOME%\lib\netty-codec-4.1.27.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.27.Final.jar;%APP_HOME%\lib\netty-transport-4.1.27.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.27.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.27.Final.jar;%APP_HOME%\lib\netty-common-4.1.27.Final.jar;%APP_HOME%\lib\netty-tcnative-boringssl-static-2.0.12.Final-osx-x86_64.jar;%APP_HOME%\lib\junit-4.12.jar;%APP_HOME%\lib\mockito-core-1.9.5.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\jsr305-3.0.1.jar;%APP_HOME%\lib\commons-configuration-1.8.jar;%APP_HOME%\lib\jackson-databind-2.9.4.jar;%APP_HOME%\lib\jackson-annotations-2.9.4.jar;%APP_HOME%\lib\jackson-core-2.9.4.jar;%APP_HOME%\lib\annotations-2.0.0.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\jersey-apache-client4-1.19.1.jar;%APP_HOME%\lib\httpclient-4.5.3.jar;%APP_HOME%\lib\jersey-client-1.19.1.jar;%APP_HOME%\lib\jettison-1.3.7.jar;%APP_HOME%\lib\xstream-1.4.10.jar;%APP_HOME%\lib\jersey-core-1.19.1.jar;%APP_HOME%\lib\jsr311-api-1.1.1.jar;%APP_HOME%\lib\compactmap-1.2.1.jar;%APP_HOME%\lib\asm-5.0.4.jar;%APP_HOME%\lib\hamcrest-core-1.3.jar;%APP_HOME%\lib\objenesis-1.0.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\stax-api-1.0.1.jar;%APP_HOME%\lib\commons-math-2.2.jar;%APP_HOME%\lib\xmlpull-1.1.3.1.jar;%APP_HOME%\lib\xpp3_min-1.1.4c.jar;%APP_HOME%\lib\dexx-collections-0.2.jar;%APP_HOME%\lib\commons-jxpath-1.3.jar;%APP_HOME%\lib\joda-time-2.3.jar;%APP_HOME%\lib\servlet-api-2.5.jar;%APP_HOME%\lib\antlr-runtime-3.4.jar;%APP_HOME%\lib\gson-2.1.jar;%APP_HOME%\lib\stringtemplate-3.2.1.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\httpcore-4.4.6.jar;%APP_HOME%\lib\commons-codec-1.9.jar

@rem Execute zuul-sample
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %ZUUL_SAMPLE_OPTS%  -classpath "%CLASSPATH%" com.netflix.zuul.sample.Bootstrap %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable ZUUL_SAMPLE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%ZUUL_SAMPLE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
