Those scripts lets your users query offline file with SHA1 passwords taken from Have I been Pwned.
https://haveibeenpwned.com/Passwords

File is to big to open normally (obviously) but can be checked under two minutes.

Format is: HASH:NUMBER
eg. 11:22 is 17BA0791499DB908433B80F37C5FBC89B870084B:22
Hash is upper case, number is how many times this password appeared in the database.
File ordered by hash.

Script assumes file is named p_hash.txt and sits next to script in same folder.

I've made whole thing partially for fun/ learning experience and partially to give our users safe, 
offline option to check passwords.

Currently it holds two scripts, one in bash, one in python 3
