#sg
if [ $# -eq 0 ]
then
echo " Usage : $ ./SoundGen <YourMessage>  " 
exit -1
fi
which festival 2>/dev/null
if [ "$?" -eq 1 ]
then 
echo "'festival' not found,please try again after "
exit -1
fi

echo "$@" | festival --tts
exit 0
