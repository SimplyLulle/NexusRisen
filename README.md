# Nexus Risen

Run the Resources in correct order in order to work properly

# Main Mysql Resources

start mysql-async <br/>
start async

# Main EssentialMode Resources

start essentialmode <br/>
start es_plugin_mysql <br/>
start es_extended <br/>
start es_admin2

# Main EssentialMode CronJob

start cron

# EssentialMode Resources

start esx_service <br/>
start esx_shops <br/>
start esx_extraitems <br/>
start allcity_wallet <br/>
start new_banking <br/>
start esx_status <br />
start esx_basicneeds <br/>
start esx-qalle-needs <br/>
start esx_optionalneeds <br/>
start esx_customui <br />
start instance <br/>
start esx_billing <br/>
start esx_addonaccount <br/>
start esx_addoninventory <br/>
start esx_society <br/>
start esx_datastore <br/>
start esx_identity <br/>
start esx_license <br/>
start esx_property <br/>
start esx_policejob <br/>
start esx_celldoors <br/>
start esx_drugs <br/>
start esx_selldrugs <br/>
start esx_crafting <br/>
start esx_hospital <br/>
start esx_borrmaskin <br/>
start esx_holdupbank <br/>
start esx_panicbutton <br/>
start esx_mecanojob <br/>
start esx_thief <br/>
start esx_blackmoney

# EssentialMode Jobs

start esx_vigneronjob

# Map Resources

start police_dept <br/>
start weigh_stations <br/>
start route13_barriers

# Vehicle Resources

start blaine_sheriff

# Resources

start calmai


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


