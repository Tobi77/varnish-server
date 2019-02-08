zend_extension=xdebug.so
xdebug.auto_trace=1
;;Type: boolean, Default value: 0
;;When this setting is set to on, the tracing of function calls will be enabled just before the script is run. This makes it possible to trace code in the auto_prepend_file.

xdebug.cli_color=1
;;Type: integer, Default value: 0, Introduced in Xdebug 2.2
;;If this setting is 1, Xdebug will color var_dumps and stack traces output when in CLI mode and when the output is a tty. On Windows, the ANSICON tool needs to be installed.
;;If the setting is 2, then Xdebug will always color var_dumps and stack trace, no matter whether it's connected to a tty or whether ANSICON is installed. In this case, you might end up seeing escape codes.

;xdebug.collect_assignments=0
;;Type: boolean, Default value: 0, Introduced in Xdebug 2.1
;;This setting, defaulting to 0, controls whether Xdebug should add variable assignments to function traces.

xdebug.collect_includes=1
;;Type: boolean, Default value: 1
;;This setting, defaulting to 1, controls whether Xdebug should write the filename used in include(), include_once(), require() or require_once() to the trace files.

;xdebug.collect_params=0
;;Type: integer, Default value: 0
;;This setting, defaulting to 0, controls whether Xdebug should collect the parameters passed to functions when a function call is recorded in either the function trace or the stack trace.
;;The setting defaults to 0 because for very large scripts it may use huge amounts of memory and therefore make it impossible for the huge script to run. You can most safely turn this setting on, but you can expect some problems in scripts with a lot of function calls and/or huge data structures as parameters. Xdebug 2 will not have this problem with increased memory usage, as it will never store this information in memory. Instead it will only be written to disk. This means that you need to have a look at the disk usage though.
;;This setting can have four different values. For each of the values a different amount of information is shown. Below you will see what information each of the values provides. See also the introduction of the feature Stack Traces for a few screenshots.

;xdebug.collect_return=0
;;Type: boolean, Default value: 0
;;This setting, defaulting to 0, controls whether Xdebug should write the return value of function calls to the trace files.

;xdebug.collect_vars=0
;;Type: boolean, Default value: 0
;;This setting tells Xdebug to gather information about which variables are used in a certain scope. This analysis can be quite slow as Xdebug has to reverse engineer PHP's opcode arrays. This setting will not record which values the different variables have, for that use xdebug.collect_params. This setting needs to be enabled only if you wish to use xdebug_get_declared_vars().

;xdebug.coverage_enable=1
;;Type: boolean, Default value: 1, Introduced in Xdebug 2.2
;;If this setting is set to 0, then Xdebug will not set-up internal structures to allow code coverage. This speeds up Xdebug quite a bit, but of course, Code Coverage Analysis won't work.

;xdebug.default_enable=1
;;Type: boolean, Default value: 1
;;If this setting is 1, then stacktraces will be shown by default on an error event. You can disable showing stacktraces from your code with xdebug_disable(). As this is one of the basic functions of Xdebug, it is advisable to leave this setting set to 1.
;;xdebug.dump.*
;;Type: string, Default value: Empty
;;* = COOKIE, FILES, GET, POST, REQUEST, SERVER, SESSION. These seven settings control which data from the superglobals is shown when an error situation occurs. Each php.ini setting can consist of a comma seperated list of variables from this superglobal to dump, but make sure you do not add spaces in this setting. In order to dump the REMOTE_ADDR and the REQUEST_METHOD when an error occurs, add this setting:
;xdebug.dump.SERVER = REMOTE_ADDR,REQUEST_METHOD

;xdebug.dump_globals=1
;;Type: boolean, Default value: 1
;;Controls whether the values of the superglobals as defined by the xdebug.dump.* settings whould be shown or not.

;xdebug.dump_once=1
;;Type: boolean, Default value: 1
;;Controls whether the values of the superglobals should be dumped on all error situations (set to 0) or only on the first (set to 1).

;xdebug.dump_undefined=0
;;Type: boolean, Default value: 0
;;If you want to dump undefined values from the superglobals you should set this setting to 1, otherwise leave it set to 0.

;xdebug.extended_info=1
;;Type: integer, Default value: 1
;;Controls whether Xdebug should enforce 'extended_info' mode for the PHP parser; this allows Xdebug to do file/line breakpoints with the remote debugger. When tracing or profiling scripts you generally want to turn off this option as PHP's generated oparrays will increase with about a third of the size slowing down your scripts. This setting can not be set in your scripts with ini_set(), but only in php.ini.

;xdebug.file_link_format=""
;;Type: string, Default value: , Introduced in Xdebug 2.1
;;This setting determines the format of the links that are made in the display of stack traces where file names are used. This allows IDEs to set up a link-protocol that makes it possible to go directly to a line and file by clicking on the filenames that Xdebug shows in stack traces. An example format might look like:

xdebug.idekey="PHPSTORM"
;;Type: string, Default value: *complex*
;;Controls which IDE Key Xdebug should pass on to the DBGp debugger handler. The default is based on environment settings. First the environment setting DBGP_IDEKEY is consulted, then USER and as last USERNAME. The default is set to the first environment variable that is found. If none could be found the setting has as default ''. If this setting is set, it always overrides the environment variables.

;xdebug.manual_url="http://www.php.net"
;;Type: string, Default value: http://www.php.net
;;This is the base url for the links from the function traces and error message to the manual pages of the function from the message. It is advisable to set this setting to use the closest mirror.

xdebug.max_nesting_level=500
;;Type: integer, Default value: 100
;;Controls the protection mechanism for infinite recursion protection. The value of this setting is the maximum level of nested functions that are allowed before the script will be aborted.

;xdebug.overload_var_dump=1
;;Type: boolean, Default value: 1, Introduced in Xdebug 2.1
;;By default Xdebug overloads var_dump() with its own improved version for displaying variables when the html_errors php.ini setting is set to 1. In case you do not want that, you can set this setting to 0, but check first if it's not smarter to turn off html_errors.

;xdebug.profiler_append=0
;;Type: integer, Default value: 0
;;When this setting is set to 1, profiler files will not be overwritten when a new request would map to the same file (depnding on the xdebug.profiler_output_name setting. Instead the file will be appended to with the new profile.

xdebug.profiler_enable=1
;;Type: integer, Default value: 0
;;Enables Xdebug's profiler which creates files in the profile output directory. Those files can be read by KCacheGrind to visualize your data. This setting can not be set in your script with ini_set(). If you want to selectively enable the profiler, please set xdebug.profiler_enable_trigger to 1 instead of using this setting.

;xdebug.profiler_enable_trigger=0
;;Type: integer, Default value: 0
;;When this setting is set to 1, you can trigger the generation of profiler files by using the XDEBUG_PROFILE GET/POST parameter, or set a cookie with the name XDEBUG_PROFILE. This will then write the profiler data to defined directory. In order to prevent the profiler to generate profile files for each request, you need to set xdebug.profiler_enable to 0.

xdebug.profiler_output_dir=/tmp/xdebug
;;Type: string, Default value: /tmp
;;The directory where the profiler output will be written to, make sure that the user who the PHP will be running as has write permissions to that directory. This setting can not be set in your script with ini_set().

;xdebug.profiler_output_name="cachegrind.out.%p"
;;Type: string, Default value: cachegrind.out.%p
;;This setting determines the name of the file that is used to dump traces into. The setting specifies the format with format specifiers, very similar to sprintf() and strftime(). There are several format specifiers that can be used to format the file name.
;;See the xdebug.trace_output_name documentation for the supported specifiers.

;xdebug.remote_autostart=0
;;Type: boolean, Default value: 0
;;Normally you need to use a specific HTTP GET/POST variable to start remote debugging (see Remote Debugging). When this setting is set to 1, Xdebug will always attempt to start a remote debugging session and try to connect to a client, even if the GET/POST/COOKIE variable was not present.

;xdebug.remote_connect_back=0
;;Type: boolean, Default value: 0, Introduced in Xdebug 2.1
;;If enabled, the xdebug.remote_host setting is ignored and Xdebug will try to connect to the client that made the HTTP request. It checks the $_SERVER['REMOTE_ADDR'] variable to find out which IP address to use. Please note that there is no filter available, and anybody who can connect to the webserver will then be able to start a debugging session, even if their address does not match xdebug.remote_host.

;xdebug.remote_cookie_expire_time=3600
;;Type: integer, Default value: 3600, Introduced in Xdebug 2.1
;;This setting can be used to increase (or decrease) the time that the remote debugging session stays alive via the session cookie.

xdebug.remote_enable=1
;;Type: boolean, Default value: 0
;;This switch controls whether Xdebug should try to contact a debug client which is listening on the host and port as set with the settings xdebug.remote_host and xdebug.remote_port. If a connection can not be established the script will just continue as if this setting was 0.

xdebug.remote_handler="dbgp"
;;Type: string, Default value: dbgp
;;Can be either 'php3' which selects the old PHP 3 style debugger output, 'gdb' which enables the GDB like debugger interface or 'dbgp' - the debugger protocol. The DBGp protocol is more widely supported by clients. See more information in the introduction for Remote Debugging.
;;Note: Xdebug 2.1 and later only support 'dbgp' as protocol.

xdebug.remote_host="192.45.17.2"
;;Type: string, Default value: localhost
;;Selects the host where the debug client is running, you can either use a host name or an IP address. This setting is ignored if xdebug.remote_connect_back is enabled.

;xdebug.remote_log=""
;;Type: string, Default value:
;;If set to a value, it is used as filename to a file to which all remote debugger communications are logged. The file is always opened in append-mode, and will therefore not be overwritten by default. There is no concurrency protection available. The format of the file looks something like:

;xdebug.remote_mode="req"
;;Type: string, Default value: req
;;Selects when a debug connection is initiated. This setting can have two different values:
;;req Xdebug will try to connect to the debug client as soon as the script starts.
;;jit Xdebug will only try to connect to the debug client as soon as an error condition occurs.

xdebug.remote_port=9000
;;Type: integer, Default value: 9000
;;The port to which Xdebug tries to connect on the remote host. Port 9000 is the default for both the client and the bundled debugclient. As many clients use this port number, it is best to leave this setting unchanged.

;xdebug.scream=0
;;Type: boolean, Default value: 0, Introduced in Xdebug 2.1
;;If this setting is 1, then Xdebug will disable the @ (shut-up) operator so that notices, warnings and errors are no longer hidden.

;xdebug.show_exception_trace=0
;;Type: integer, Default value: 0
;;When this setting is set to 1, Xdebug will show a stack trace whenever an exception is raised - even if this exception is actually caught.

;xdebug.show_local_vars=0
;;Type: integer, Default value: 0
;;When this setting is set to something != 0 Xdebug's generated stack dumps in error situations will also show all variables in the top-most scope. Beware that this might generate a lot of information, and is therefore turned off by default.

;xdebug.show_mem_delta=0
;;Type: integer, Default value: 0
;;When this setting is set to something != 0 Xdebug's human-readable generated trace files will show the difference in memory usage between function calls. If Xdebug is configured to generate computer-readable trace files then they will always show this information.

;xdebug.trace_enable_trigger=0
;;Type: boolean, Default value: 0, Introduced in Xdebug 2.2
;;When this setting is set to 1, you can trigger the generation of trace files by using the XDEBUG_TRACE GET/POST parameter, or set a cookie with the name XDEBUG_TRACE. This will then write the trace data to defined directory. In order to prevent Xdebug to generate trace files for each request, you need to set xdebug.auto_trace to 0.

xdebug.trace_format=1
;;Type: integer, Default value: 0
;;The format of the trace file.
;;Value	Description
;;0	shows a human readable indented trace file with: time index, memory usage, memory delta (if the setting xdebug.show_mem_delta is enabled), level, function name, function parameters (if the setting xdebug.collect_params is enabled), filename and line number.
;;1	writes a computer readable format which has two different records. There are different records for entering a stack frame, and leaving a stack frame. The table below lists the fields in each type of record. Fields are tab separated.
;;2	writes a trace formatted in (simple) HTML.
;;Fields for the computerized format:

xdebug.trace_options=1
;;Type: integer, Default value: 0
;;When set to '1' the trace files will be appended to, instead of being overwritten in subsequent requests.

xdebug.trace_output_dir=/tmp/xdebug
;;Type: string, Default value: /tmp
;;The directory where the tracing files will be written to, make sure that the user who the PHP will be running as has write permissions to that directory.

;xdebug.trace_output_name="trace.%c"
;;Type: string, Default value: trace.%c
;;This setting determines the name of the file that is used to dump traces into. The setting specifies the format with format specifiers, very similar to sprintf() and strftime(). There are several format specifiers that can be used to format the file name. The '.xt' extension is always added automatically.

;xdebug.var_display_max_children=128
;;Type: integer, Default value: 128
;;Controls the amount of array children and object's properties are shown when variables are displayed with either xdebug_var_dump(), xdebug.show_local_vars or through Function Traces.

;xdebug.var_display_max_data=512
;;Type: integer, Default value: 512
;;Controls the maximum string length that is shown when variables are displayed with either xdebug_var_dump(), xdebug.show_local_vars or through Function Traces.

;xdebug.var_display_max_depth=3
;;Type: integer, Default value: 3
;;Controls how many nested levels of array elements and object properties are when variables are displayed with either xdebug_var_dump(), xdebug.show_local_vars or through Function Traces.