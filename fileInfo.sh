#./bin/bash
if [ -f $1 ]
then
  echo $1  is a file
  filesize=`du -b "$1" | cut -f1`
echo File size: $filesize

if [[ "$filesize" -gt 1048576 ]]; then
        echo Large file
elif [[ "$filesize"  -le  10458576 ]]; then

        if [[ "$filesize" -gt  102400 ]]; then
                echo Medium file
        else
                echo Small file
        fi
fi

elif [ -d $1 ]
then
  echo $1 is a directory
else
  echo $1  is neither a file nor directory
fi
if [ -r $1 ]
then
  echo $1  has read permission
  fi
if [ -w $1 ]
then
  echo $1 has write permission
fi
if [ -e $1 ]
then
        echo $1 has execute permission
fi

