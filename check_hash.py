#!/usr/bin/env python3
import getpass
import hashlib
import sys
import os
import time

def passwordcheck():
    os.system('cls')  # For Windows
    os.system('clear')  # For Linux/OS X
    #Ask for Password
    print('Please type your password and press enter')
    password = getpass.getpass()
    print("This may take up to 220s.")
    start = time.time()

    #Hash Password
    SHA1_pass = hashlib.sha1(password.encode('utf-8'))
    SHA1_done = SHA1_pass.hexdigest()

    os.system('cls')  # For Windows
    os.system('clear')  # For Linux/OS X
    #checkec upper hash agains file
    def check():
        with open('p_hash.txt', 'r') as inF:
            for line in inF:
                if SHA1_done.upper() in line:
                    yes = line[41:]
                    end = time.time()
                    total = (end - start)
                    print("Number of times you password appeared is: {}".format(yes))
                    print("You should probably change it :)")
                    print("This test took: {}s".format(total))
                    return
            end = time.time()
            total = (end - start)
            print("Good News Everyone !!!")
            print("There is nothing in the database")
            print("This test took: {}s".format(total))
            return
    check()

checknext = "y"
while checknext == "y":
    passwordcheck()
    print("Would you like to check another one? [y/n]")
    checknext = input()
