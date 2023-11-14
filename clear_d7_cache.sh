# manually clear cache on a d7 site
lando drush sql-query "SHOW TABLES LIKE 'cache%';" | xargs -I {} lando drush sql-query "TRUNCATE TABLE {};"
