crror
=====

Colorize error messages from various compilers


How to install
==============

1. install ruby

   if you use rbenv, using ruby 2.1.0 (latest stable as of Jan 2014) is recommended. (the version is specified in .ruby-version)
   ```
   $ rbenv install 2.1.0   # you need ruby-build plugin
   ```
   
   older versions are possibly supported because any new ruby features are not used in crror.
   

2. clone
   ```
   $ git clone https://github.com/bearmini/crror.git ~/crror
   ```

3. bundle
   ```
   $ cd ~/crror
   $ gem install bundler   # if you newly installed ruby 2.1.0 for crror
   $ bundle
   ```

4. setup $PATH

   ```
   $ export PATH=$PATH:<where you have crror installed>
   ```
   or
   ```
   $ ln -s <crror dir>/crror <where already included in $PATH such as ~/bin>
   ```
    
   if you have cloned crror in ~/crror and ~/bin is already in $PATH,
   ```
   $ export PATH=$PATH:~/crror
   ```
   or
   ```
   $ ln -s ~/crror/crror ~/bin
   ```

How to use
==========

feed output from a compiler/linker commands

    $ crror make


feed compiler/linker output from a log file

    $ crror build.log

