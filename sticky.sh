sticky_arr=$(find . -type d -perm -002 ! -perm /a+t)
for f in $sticky_arr
do
chmod +t $f
done

##find . -type d -perm -002 ! -perm /a+t -exec chmod +t {} +


(find . -type f -perm /a+s )>>setuid.sh
find . -type f -perm -002 -perm /a+s -exec chmod o-w {} +


find . -type f -size +100k -user root -perm -200 -o -perm -020 -o -perm -002 -mtime +30 -exec touch {} +


sticky_arr=$(find . -type f -size +100k -user root -perm -200 -o -perm -020 -o -perm -002 -mtime +30)
for f in $sticky_arr
do
filename=$(ls -lu "$f" |awk -F':' '{ print $9 }');
directory=$(echo $[#filename/]');
modify_date=$(ls -lu $f |awk -F':' '{ print $5 $6 $7 $8 }');
owner=$(ls -lu $f |awk -F':' '{ print $3 }');
permission=$(ls -lu $f |awk -F':' '{ print $1 }');
echo $filename $directory $modify_date $owner $permission
done




 -m sha-512 -S "sYNHxMWj" 

