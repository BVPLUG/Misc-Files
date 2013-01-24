#sg
declare -a year=( '2001' '2002' '2003' '2004' '2005' '2006' '2007' '2008' '2009'
'2010' '2011' '2012' )
i=0;
while [ "$i" -lt 12 ] 
do
link="http://www.indiapost.gov.in/Stamps${year[i]}.aspx";
pattern="$(( (i+1) % 10 )).jpg"
echo "Fetching stamps from year ${year[i]}";
GET -o links $link|cut -f2|grep -e $pattern -e ".gif">>slinks;
i=$((i+1));
done
echo "Beginning Download";
mkdir stamps
cd stamps
wget -i ../slinks
rm -f ../slinks
 
