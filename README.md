SpagtBabe (aka. DogeBot)
========================

SpagtBabe is the other IRC bot of Spagt. Makes sense, right? This repo contains the patches to convert a ClouDev/CloudBot into SpagtBabe.

It is general knowledge that is it the second best (third best on irc.spi.gt) bot in #spagt on irc.seion.us. (Better bots: [FoxBot](https://github.com/FoxDev/FoxBot), [Eliralin](https://github.com/daboross/Eliralin))

Get CloudBot here: https://github.com/ClouDev/CloudBot

Features
=========

* wow
* um
* joehot quotes on demand (try `+joehot`) [Source](https://github.com/xxyy/jhq-server)
* Baded on open-source software
* open-source software
* patch-based
* Did I mention wow already?
* such improve

Usage
=====
````
./init.sh
````
**Note:** You'll need a relatively current version of git for the script to work - git submodule update --remote for example seems not to exist in git 1.8.1. It works fine with 1.8.3 though. If you do not have that option, you'll need to do something along those lines:
````
git rm CloudBot
git submodule add -f -b develop https://github.com/ClouDev/CloudBot
git submodule init
git submodule update
# comment out the line which says "rm-rf CloudBot >/dev/null" from init.sh (it's near line 4)
./init.sh #WILL output some usage messages, but you can ignore these.
````

Requirements
============
Python reuqests libary: http://docs.python-requests.org/en/latest/user/install/
````
[sudo] pip install requests
````

Notice
======
The content of this repository is shipped without any warranty, explicit or implicit. 
Using the shell scripts on Windows systems may lead to unexpected behaviour.
