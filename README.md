crror
=====

Colorize error messages got from various compilers


How to install
==============

1. Install Ruby
   if you use rbenv, using ruby 2.1.0 is recommended.

2. bundle
   $ bundle install


How to use
==========

feed output from a compiler/linker

$ make | crror.rb


feed compiler/linker output from a log file

$ crror.rb build.log

