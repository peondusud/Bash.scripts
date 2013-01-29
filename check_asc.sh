#!/bin/bash

wget http://oege.ie.hva.nl/~forensics/CF.asc

path="CF.asc"

function test_md5()
{
correct_md5_hash=$(cat $2 |awk 'NR=1{ print $1 }')
test_hash_md5=$(md5sum $1)
echo "md5"
echo $correct_md5_hash
echo $test_hash_md5
if [ "$correct_md5_hash" == "$test_hash_md5" ] ; then
echo "md5 correct"
else
echo "md5 incorrect"
fi
echo ""
}

function test_sha1()
{
correct_sha1_hash=$(cat $2 |awk 'NR=2{ print $1 }')
test_hash_sha1=$(sha1sum $1) 
echo "sha1" 
echo $correct_sha1_hash
echo $test_hash_sha1
if [ "$correct_sha1_hash" == "$test_hash_sha1" ] ; then
echo "sha1 correct"
else
echo "sha1 incorrect"
fi
echo ""
}

function test_sha256()
{
correct_sha256_hash=$(cat $2 |awk  'NR=3{ print $1 }')
test_hash_sha256=$(sha256sum $1) 
echo "sha256"
echo $correct_sha256_hash
echo $test_hash_sha256

if [ "$correct_sha256_hash" == "$test_hash_sha256" ] ; then
echo "sha256 correct"
else
echo "sha256 incorrect"
fi
echo ""
}

clear
int=1
while read CMD; do
    echo "$int *********** $CMD"

 case $int in
    "1" )
      test_md5 $1 $CMD & ;;
    "2" )
      test_sha1 $1 $CMD & ;;
    "3" )
      test_sha256 $1 $CMD & ;;
 esac
int=`expr $int + 1 `
done < "$path"
wait
