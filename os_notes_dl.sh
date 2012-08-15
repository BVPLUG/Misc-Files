i=1
directory="os notes";
if [ ! -d  "$directory" ]
then
mkdir $directory
fi
linkfile="links"
if [ -f "$linkfile" ]
then
rm links;
fi
echo "Creating a directory to download the files to...";
cd os\ notes
echo "Fetching links..."
progress=20;
while [ $i -le 20 ]
do
GET -o links http://nptel.iitm.ac.in/courses/Webcourse-contents/IISc-BANG/Operating%20Systems/left_mod$i.html|grep pdf$|cut -f2>>links
i=`expr $i + 1`
progress=`expr $progress - 1`
echo "$progress modules remaining";
done
echo "Downloading files..."
for j in `cat links`
do
echo "Downloading file $progress";
progress=`expr $progress + 1`
wget $j
done
