#bin/bash!
#Disk Kullanım Script
partition df -h grep -i 'dev' awk'{print $5} sed -r 's/%/ /g'

echo $partition
if "partition" 90 then
elif
echo " HOST: TEST SERVER DISK INFO " | mailx -s "CRITICAL" emreferitaslantas@gmail.com 
"partition" 85 then
elif
echo " HOST: TEST SERVER DISK INFO " | mailx -s "WARNING" emreferitaslantas@gmail.com 
else
echo " HOST: TEST SERVER DISK INFO " | mailx -s "NORMAL" emreferitaslantas@gmail.com 
exit 1
fi
 
disk=$(df -h /root | awk 'NR==2{print $5}' | sed -r 's/%/ /g')
if [ $disk -gt 95 ]
then
echo " HOST: TEST SERVER DISK INFO " | mailx -s "CRITICAL" emreferitaslantas@gmail.com 
elif [ $disk -gt 85 ]
then
echo " HOST: TEST SERVER DISK INFO " | mailx -s "WARNING" emreferitaslantas@gmail.com 
else
echo " HOST: TEST SERVER DISK INFO " | mailx -s "NORMAL" emreferitaslantas@gmail.com 
exit 1
fi
