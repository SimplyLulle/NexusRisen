# Nexus Risen

Run the Resources in correct order in order to work properly

# Main Mysql Resources

start mysql-async
start async

# End Main Mysql Resources

# Main EssentialMode Resources

start essentialmode
start es_plugin_mysql
start es_extended
start es_admin2 

# End Main EssentialMode Resources

# Main EssentialMode CronJob

start cron

# End Main EssentialMode CronJob


# EssentialMode Resources

start esx_billing
start esx_addonaccount
start esx_society
start esx_datastore
start esx_identity
start esx_license
start esx_policejob

# End EssentialMode Resources
