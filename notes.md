# Notes on BANSHEE

## Installation

There is a manual for BANSHEE in the `docs` directory.

My build environment is 64-bit Arch Linux (kernel 5.0.7) with:
* OCaml 4.07.1
* GCC 8.3.0
* Python 2.7.16
* indent 2.2.12
* etags 26.1
* flex 2.6.4
* bison 3.3.2

### First Attempt

I encountered multiple errors when I tried to build BANSHEE 1.02 with `make all
check` (as per the manual).

First, GCC reported multiple "cast from pointer to integer of different size"
errors. Removing the `-Werror` flag, which turns compiler warnings into errors,
from the makefiles resolved this issue.

Second, the Python 2 script `bin/build_funptr_table.py` contains a mix of tabs
and spaces. It was necessary to replace all tabs with spaces in order for the
Python interpreter to accept the script as syntactically valid. On my system,
it was also necessary to change the script's shebang line to refer specifically
to `python2`, since `python` defaults to Python 3.

Third, the test case `check/lambda-test.exe` fails with a segmentation fault.

### Second Attempt

I decided not to ignore the "cast from pointer to integer of different size"
warnings. Posts on StackOverflow suggested this error is common when trying to
compile C programs designed (non-portably) for 32-bit machines on a 64-bit
machine. We can cross-compile a 32-bit binary on a 64-bit machine with GCC's
`-m32` flag.

With `-m32` set, compiling `libcompat/stats.c` fails with an error that
`<linux/config.h>` is missing. This header file was removed from the Linux
kernel in version 2.6.19 [ref][config.h]. Commenting out the `#include` line
for this header file makes it possible to compile files in the `libcompat`
directory.

The Python 2 script `bin/build_funptr_table.py` has the same problems and fixes
as described in the previous section.

Compiling `ibanshee/` fails with the error:
```
/usr/bin/ld: skipping incompatible /usr/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../libfl.so when searching for -lfl
/usr/bin/ld: skipping incompatible /usr/lib/libfl.so when searching for -lfl
/usr/bin/ld: cannot find -lfl
collect2: error: ld returned 1 exit status
```
I suspect the problem is that `libfl.so` on my machine is a 64-bit library, so
the linker cannot link it to the ibanshee binary.

At this point I decided it might be better to try to change the code to support
64-bit machines rather than cross-compile.

[config.h]: https://askubuntu.com/questions/294731/my-computer-doesnt-recognize-the-following-library-linux-config-h-when-compili

### Third Attempt

For this attempt, the idea was to replace `int` with `intptr_t` in declarations
and definitions of variables/parameters that are cast to/from pointers. The
`intptr_t` type is guaranteed to have a size large enough to hold pointers on
the compiler's target architecture.

In practice this meant trying to compile, checking errors, making fixes to the
types, and trying to compile again. The changes I attempted are recorded in
commits in [this repository][banshee-fork].

[banshee-fork]: https://github.com/nick-ulle/RBanshee

One of the difficult aspects of this strategy is that the developers used
typedefs and macros to declare and define define common routines for several
different kinds of "list" objects (see `list.h` for the macros).

