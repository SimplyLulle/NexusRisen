# Nexus Risen

Run the Resources in correct order in order to work properly

# Main Mysql Resources
```
start mysql-async <br/>
start async
```
# Main EssentialMode Resources
```
start essentialmode
start es_plugin_mysql
start es_extended
start es_admin2
```
# Main EssentialMode CronJob
```
start cron
```
# EssentialMode Resources
```
start esx_service
start esx_shops
start esx_extraitems
start allcity_wallet
start new_banking
start esx_status
start esx_basicneeds
start esx_menu_default
start esx_menu_list
start esx_menu_dialog
start esx_gym
start esx-qalle-needs
start esx_optionalneeds
start esx_customui
start instance
start esx_billing
start esx_addonaccount
start esx_addoninventory
start esx_society
start esx_datastore
start esx_identity
start skinchanger
start esx_skin
start esx_clotheshop
start esx_license
start esx_property
start esx_policejob
start esx_celldoors
start esx_drugs
start esx_selldrugs
start esx_crafting
start esx_hospital
start esx_borrmaskin
start esx_holdupbank
start esx_panicbutton
start esx_mecanojob
start esx_thief
start esx_blackmoney
start esx-carrental
start esx_realweapons
```
# EssentialMode Jobs
```
start esx_vigneronjob
```
# Map Resources
```
start police_dept
start weigh_stations
start route13_barriers
```
# Vehicle Resources
```
start blaine_sheriff
start los_santos_pd
```
# Resources
```
start calmai
```

# MYSQL EXECUTION CODE

## Optium Drug

```
INSERT INTO items (name, label) VALUES
(‘opium’, ‘Opium’),
(‘opium_pooch’, ‘Pochon de opium’)
;
```

## Esx Basic Needs

```
INSERT INTO `items` (`name`, `label`, `limit`) VALUES
	('bread', 'Pain', 10),
	('water', 'Eau', 5)
;
```

# Configuration

## Esx Crafting

Recipes are defined in tables with the following structure:

```
['resultingItemName'] = {
    { item = "ingredient1", quantity = 2, remove = true },
    { item = "ingredient2", quantity = 3 },
},
```
In the example above, the resultingItemName requires two "ingredient1" and three "ingredient2". 
NOTE: These are all based on the name field of the item in the database, not the label field. 
There is no limit on the amount of recipes you can create, nor the amount of ingredients each recipe can have. 
The remove parameter is optional. remove = false will prevent the ingredient item from being removed from the player's inventory.
Remove will default to true if not specified.

The Crafting Menu can be made available either through a "store" where a player must visit a specified location on the map, or through a keyboard shortcut. 
Both of these options may be configured through the config.lua file.

## Drill Machine Item
Create "drill" in items table

```
INSERT INTO `items` (`name`, `label`, `limit`) VALUES  
    ('drill', 'Borrmaskin', 1)
;
```
If you want it added to ESX Shops. Execute this SQL.

```
INSERT INTO `shops` (name, item, price) VALUES
	('TwentyFourSeven','drill',1000),
	('RobsLiquor','drill',1000),
	('LTDgasoline','drill',1000)
;
```


