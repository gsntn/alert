Description
===========
Chef cookbook that sets up an alert that checks yearly if a log file contains any lines starting with the word "ERROR", if so sends an email

Requirements
============
All included in cookbook

Attributes
==========
default[:log][:dir]       = Directory where log file is located '\n'
default[:log][:file]       = log file name '\n'
default[:alert][:dir]       = Directory where alert would be deployed '\n'
default[:mail][:server]       = smtp server '\n'
default[:mail][:from]       = email from attribute '\n'
default[:mail][:to]       = email to attribute '\n'
default[:mailsend][:git]       = "https://github.com/gsntn/mailsend" '\n'
default[:mailsend][:name]       = "mailsend-1.17b12.tar.gz" '\n'
default[:mailsend][:dir]       = "mailsend-1.17b12" '\n'

Usage
=====
Alers
