# script_ndt_auto_report
This scripts are used to auto copy ndt test data into mysql database

## Clone the repository
```bash
git clone https://github.com/Abousidikou/script_ndt_auto_report.git && cd script_ndt_auto_report
```

## Edit files
Replace every line in process_pro.sh, process_pro.py and process_all_pro.sh  by the exact informations according to your work environment


## Set Database in mysql

Install mysql by visiting [this website](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04)

Make sure the database is already created 
```bash
mysql -h localhost -uUser -pPassword Database_Name < script.sql
```

Fill default table like Country,City ...
```bash
./process_pro.sh "setup"
```

## Configure cron for automatic save into database

Edit cron file
```bash
crontab -e	
```
Add on top of crontab file path to record to database every 1AM:
Replace `&path` by the absolute path to process_pro.sh
testdatacopy copy files from monitor to emes
```bash
PATH=/usr/bin:/usr:/home/"path to script_ndt_auto_report file"
0 1 * * * testdatacopy.sh >> /home/emes/ndt/script_ndt_auto_report/copy.log
0 2 * * * process_pro.sh "report"
```

## Save all
When this script in not set at the same with ndt server , before planning to set the automatic save, you can use process_all_pro.sh to save all
```bash
./process_all_pro.sh
```
