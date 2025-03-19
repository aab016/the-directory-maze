#!/bin/bash

HOW_MANY=60

sudo rm -rf /start
sudo mkdir -p /start
sudo chmod 777 -R /start
ruby .devcontainer/maze.rb ${HOW_MANY} /start

dst=`find /start -name 29`
echo "Tesoro #1" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 09`
echo "Tesoro #2" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 02`
echo "Tesoro #3" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 07`
echo "Tesoro #4" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 10`
echo "Tesoro #5" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 49`
echo "Tesoro #6" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 39`
echo "Tesoro #7" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 52`
echo "Tesoro #8" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 27`
echo "Tesoro #9" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

dst=`find /start -name 59`
echo "Tesoro #10" > treasure.txt
echo $dst >> treasure.txt
printf $dst | sha1sum - | awk '{print $1}' >> treasure.txt
cp treasure.txt ${dst}

echo 'Questo non è uno dei tesori che vai cercando!!!' > treasure.txt
echo 'Parti dalla cartella /start!' >> treasure.txt
