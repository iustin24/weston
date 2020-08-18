while getopts w: flag
do
    case "${flag}" in
        w) wordlist=${OPTARG};;
    esac
done
#admin
while read d; do
echo "$d"
done <$wordlist
#admin/dev
while read a <&3; do
   while read b <&4; do
     echo "$a/$b"
   done 4<$wordlist
done 3<$wordlist
#admin1
while read c; do
for i in {1..9}; do
echo "$c$i"
done
done <$wordlist
#1admin
while read c; do
for i in {1..9}; do
echo "$i$c"
done
done <$wordlist
#admin-dev
while read a <&3; do
   while read b <&4; do
     echo "$a-$b"
   done 4<$wordlist
done 3<$wordlist
