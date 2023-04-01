#!/bin/bash
set -eu

URL=$

export GOROOT=/usr/lib/go
export GOPATH=/opt/go/gobuster
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

echo "super go bustering for super brute: $URL"

./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /opt/SecLists/Discovery/Web_Content/tomcat.txt
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /opt/SecLists/Discovery/Web_Content/nginx.txt
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /opt/SecLists/Discovery/Web_Content/apache.txt
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /opt/SecLists/Discovery/Web_Content/Top1000-RobotsDisallowed.txt
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /opt/SecLists/Discovery/Web_Content/ApacheTomcat.fuzz.txt
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /opt/SecLists/Discovery/Web_Content/sharepoint.txt
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /opt/SecLists/Discovery/Web_Content/iis.txt
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -x txt
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -x php 
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -x doc 
./gobuster -u $URL -l -s 200,204,301,302,307,403 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -e -x docx
