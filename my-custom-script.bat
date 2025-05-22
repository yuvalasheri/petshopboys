
cd C:\MagicProjects\checkpetshopboys\Checker
"c:\magicxpa411\Mgxpastudioservices.exe"  /AutomaticProcessingSequenceFile=C:\\MagicProjects\\checkpetshopboys\\Checker\\petshopboyscheckproject.txt

findstr "Errors" "petshopboysCheckerOutput.txt" >ErrorOutput.txt
echo "Errors"                  : 0 ,> NoErrors.txt

fc ErrorOutput.txt  NoErrors.txt > nul
if errorlevel 1 goto error

cd C:\MagicProjects\checkpetshopboys\build
"c:\magicxpa411\Mgxpastudioservices.exe"  /AutomaticProcessingSequenceFile=C:\\MagicProjects\\checkpetshopboys\\build\\petshopboysbuildproject.txt

exit 0

:error

echo "Did not pass checker"
exit 999
