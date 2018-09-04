# Nexus Risen

Run the Resources in correct order in order to work properly

# Main Mysql Resources

start mysql-async
start async

# Main EssentialMode Resources

start essentialmode
start es_plugin_mysql
start es_extended
start es_admin2 

# Main EssentialMode CronJob

start cron

# EssentialMode Resources

start esx_billing
start esx_addonaccount
start esx_society
start esx_datastore
start esx_identity
start esx_license
start esx_policejob

