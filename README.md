crror
=====

Colorize error messages from various compilers


How to install
==============

1. install ruby
   if you use rbenv, using ruby 2.1.0 is recommended.

2. bundle
   $ bundle install

3. setup $PATH
   export PATH=$PATH:<where you have crror installed>
    or
   ln -s <crror dir>/crror <where already included in $PATH such as ~/bin>

   if you have cloned crror in ~/crror and ~/bin is already in $PATH,
   export PATH=$PATH:~/crror
    or
   ln -s ~/crror/crror ~/bin


How to use
==========

feed output from a compiler/linker

$ crror make


feed compiler/linker output from a log file

$ crror build.log

