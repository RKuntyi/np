sed -i -e '$a$settings["config_sync_directory"] = "../sync";' docroot/sites/default/settings.php
drush generate theme --answers '{"name": "test", "machine_name": "test", "base_theme": "Classy"}'
drush generate module-standard --answers '{"name": "test"}'
cd docroot && patch -p1 <../patches/custom-block-type.patch && patch -p1 <../patches/theme-assets.patch
cd themes/test && mkdir assets
cd assets && > main.js && > main.css
