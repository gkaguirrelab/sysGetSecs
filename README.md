This small tool creates a system command which returns the elapsed time in nanoseconds since the CPU last boot, calling the low level command mach_absolute_time().

It is meant to resemble the behavior of PsychToolbox's GetSecs function, hence providing a timestamp in the same units as the one returned from within matlab by a call to GetSecs. This is useful to align tools and functions developed in an environments other than matlab (e.g. shell, applescript...), as long as they include a system call to sysGetSecs.

Functions included in the repo:

- sysGetSecs.m : objective C function that makes the call to mach_absolute_time and converts the result to nanoseconds. Needs to be compiled to produce the executable command sysGetSecs. NOTE: this is not a matlab functions, in spite of the .m extension!

- compileSysGetSecs.m : matlab function to automatically compile sysGetSecs.m, using the 'gcc' command on terminal.

- sysGetSecsDemo.m : a small matlab demo showing the use of sysGetSecs as a system command, coupled with PsychToolBox's GetSecs. NOTE: needs PsychToolbox to work.


Usage:
1. Compile sysGetSecs.m (needs to be done once)
2. from terminal or as a system command, call path/to/executable/sysGetSecs
3. the output is nanoseconds from last boot.