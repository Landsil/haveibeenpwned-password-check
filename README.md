# HIBP offline check

## What is does
Those scripts lets your users query offline file with SHA1 passwords taken from [Have I been Pwned] (https://haveibeenpwned.com/Passwords)

File is too big to open normally (obviously) but can be checked under two minutes on a resnable machine.

Format is: HASH:NUMBER
eg. 11:22 is 17BA0791499DB908433B80F37C5FBC89B870084B:22
Hash is upper case, number is how many times this password appeared in the database.
File ordered by hash.

Script assumes file is named p_hash.txt and sits next to script in same folder.
Currently it holds two scripts, one in bash, one in python 3, works on Linux, Mac verion will requirer commeniting out few lines.

## Learning / Code examples
#### [check_hash.sh](https://github.com/Landsil/haveibeenpwned-password-check/blob/master/check_hash.sh) contains:
 - `WHILE *** DO` / `IF *** THEN *** ELSE`
 - Read password replacing characters with `*`
 - Hash data
 - Searching for string in file with `grep`
 - Tracking work time
 
#### [check_hash.py](https://github.com/Landsil/haveibeenpwned-password-check/blob/master/check_hash.py) contains:
 - `getpass.getpass` automated setup for taking passwords
 - Hashing and re-formating
 - `WITH` xxx `FOR` *** `IF`
 
