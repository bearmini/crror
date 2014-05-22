crror
=====

Colorize error messages from various compilers


How to install
==============

1. install golang
   
   Ubuntu:
   ```
   $ sudo apt-get install golang
   ```

2. clone
   ```
   $ git clone https://github.com/bearmini/crror.git ~/crror
   ```

3. setup $PATH and $GOPATH
   ```
   $ export PATH=$PATH:~/crror
   $ export GOPATH=~/golang
   ```

you may need to have the above 2 export lines in your .bashrc


How to use
==========

feed output from a compiler/linker commands

    $ crror make
 
    
or

    $ crror gcc test.c


feed compiler/linker output from a log file

    $ make 2>&1 > build.log
    $ crror build.log


