GMail backup toolkit
====================

These are some useful tools and scripts for backing up GMail into a local
directory.

Instructions to follow soon :)


Contents
-------

This toolkit contains:

* ``.fetchmailrc`` file to download gmail data via POP3 and pass it into procmail.
* ``.procmailrc`` file to place fetched email into a backup directory in Maildir
  format.
* ``download_ssl_certs.sh``: Simple script to download SSL certificates for
  pop.gmail.com and its root CA.
* maildir-deduplicate script to identify and remove duplicate messages once
  downloaded.


cui honorem, honorem
--------------------

This collection is inspired by and uses various Open Source tools from
across the Web. I'm making my best effort to give credit in this file
(below). If you have any questions or concerns, don't hesitate to contact
me.

Thanks to the following people/sources for their great code and documentation:

* [Ali Rantakari](http://hasseg.org/blog/post/161/gmail-backups-with-fetchmail-on-os-x/)
  for a good manual configuration howto for backing up gmail.
* [maildir-deduplicate](https://github.com/kdeldycke/scripts/blob/master/maildir-deduplicate.py)
  by Kevid Deldycke. GPL.

