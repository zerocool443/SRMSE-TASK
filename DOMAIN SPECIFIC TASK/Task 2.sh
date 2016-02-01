cat > ERROR.txt
cat > SUCCESS.txt
cat > INFO.txt
cat > temp.txt
cat > copy.txt
for logs in /var/log

 do 
        cat log > copy.txt
   
	sed  '/Jan 21/p'copy.txt > temp.txt 
	sed  '/ERROR/p' temp.txt >> ERROR.txt
	cat > temp.txt
	
	sed  '/Jan 21/p'copy.txt > temp.txt
	sed  '/SUCCESS/p' temp.txt >> SUCCESS.txt
	cat > temp.txt

	sed  '/Jan 21/p'copy.txt > temp.txt
        sed  '/INFO/p' temp.txt >> INFO.txt 
	cat > temp.txt     	


 done

rm -rf temp.txt
