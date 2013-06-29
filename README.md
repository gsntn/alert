Description
===========
Chef cookbook that sets up an alert that checks yearly if a log file contains any lines starting with the word "ERROR", if so sends an email

Requirements
============
All included in cookbook

Attributes
==========
default[:log][:dir]       = Directory where log file is located
default[:log][:file]       = log file name
default[:alert][:dir]       = Directory where alert would be deployed
default[:mail][:server]       = smtp server
default[:mail][:from]       = email from attribute
default[:mail][:to]       = email to attribute
default[:mailsend][:git]       = "https://github.com/gsntn/mailsend"
default[:mailsend][:name]       = "mailsend-1.17b12.tar.gz"
default[:mailsend][:dir]       = "mailsend-1.17b12"

Usage
=====
Alers
