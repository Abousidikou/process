# script_ndt_auto_report

## Clone the repository
```bash
git clone https://github.com/Abousidikou/script_ndt_auto_report.git && cd script_ndt_auto_report
```

## Set Database in mysql

Make sure the database is already created 
```bash
mysql -h localhost -uUser -pPassword Database_Name < script.sql
```

Fill default table like Country,City ...
```bash
./process_pro.sh "setup"
```

## Configure cron for automatic save into database

Set cron path
```bash
crontab -e	
```
Add on top of crontab file path to record to database every 1AM:
```bash
PATH=/usr/bin:/usr:/home/"path to script_ndt_auto_report file"
0 1 * * * process_pro.sh "report" 
```

## Replace every line in process_pro.sh, process_pro.py and process_all_pro.sh  by the exact informations according to your work environment