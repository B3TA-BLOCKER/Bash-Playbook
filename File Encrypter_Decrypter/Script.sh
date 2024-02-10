#!/bin/bash

# Simple File Encrypter and Decrypter.
clear # clear screen command.

# Check if gpg exists
if ! command -v gpg &> /dev/null; then
    echo "GnuPG (gpg) is not installed. Downloading and installing..."
    # Check package manager and install gpg
    if command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y gnupg
    elif command -v yum &> /dev/null; then
        sudo yum install -y gnupg
    elif command -v dnf &> /dev/null; then
        sudo dnf install -y gnupg
    else
        echo "Error: Unsupported package manager. Please install GnuPG manually."
        exit 1
    fi
fi

echo "This is a Simple File Encrypter/decrypter "
echo "Please choose what you want to do "

choice="Encrypt Decrypt"

select option in $choice
do
    if [ "$REPLY " = "1" ]
    then 
        echo "You have Selected Encryption!"
        echo "Please Enter the file name."
        read file;
        gpg -c $file
        rm -r $file # removing the original file {unencrypted}
        echo "The file has been encrypted."
    elif [ "$REPLY " = "2" ]
    then
        echo "You have selected Decryption!"
        echo "Please Enter the file name."
        read file;
        gpg -d $file
        rm -r $file # removing the encrypted file.
        echo "The file has been decrypted."
    fi
done
