# HIBP offline check
https://img.shields.io/github/license/landsil/haveibeenpwned-password-check 

## What it does
These scripts let your users query an offline file with SHA1 passwords taken from [Have I been Pwned](https://haveibeenpwned.com/Passwords)

The file is too big to open normally (obviously), but can be checked in under two minutes on a reasonable machine.

The format is: `HASH:NUMBER`
 - eg. `11:22` is `17BA0791499DB908433B80F37C5FBC89B870084B:22`

The hash is **upper case**, the number is how many times this password appears in the database.
The file is ordered by hash.

The script assumes the file is named `p_hash.txt` and sits next to the script in the same folder.
Currently it holds two scripts, one in bash, one in python 3, works on Linux; a Mac version will require commenting out a few lines.

## Learning / Code examples
#### [check_hash.sh](https://github.com/Landsil/haveibeenpwned-password-check/blob/master/check_hash.sh) contains:
 - `WHILE *** DO` / `IF *** THEN *** ELSE`
 - Reading password, replacing characters with `*`
 - Hash data
 - Searching for string in file with `grep`
 - Tracking work time
 
#### [check_hash.py](https://github.com/Landsil/haveibeenpwned-password-check/blob/master/check_hash.py) contains:
 - `getpass.getpass` automated setup for taking passwords
 - Hashing and re-formating
 - `WITH xxx FOR *** IF`
 
