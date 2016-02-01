echo "enter the location of your .gz flle"

read location

gunzip $location



echo "enter the location of your python directory "

read loaction2

cd $location2

rm -rf find *.pyc


echo "enter the dirctory address of folder where you have all those files in which you want to erase out the comments."

read location3

for file in $location3
do
	sed -i 's/#.*//' file > file

done
	

echo "enter the dirctory address of folder where you want to replace your name"

read location4

for file2 in $location4

do 
   sed -i 's/Tasik Rehman/Akash Thakur/g' $file2

done






