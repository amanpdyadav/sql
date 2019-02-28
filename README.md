# SQL COMMANDS AND SCRIPT
Some important sql commands and scripts.

### To grant the permissions

* Allows privilege to all the database
  * ```GRANT RELOAD, PROCESS, SELECT, DELETE, INSERT ON *.* TO admin@medusa IDENTIFIED BY 'secret';```

* Allows privilege to particular the database
  * ```GRANT SELECT, INSERT, UPDATE ON db1.logs TO logger@localhost IDENTIFIED BY 'secret';```

* Allows privilege to particular database and it specific table
  * ```GRANT SELECT (id, name, subj, grade) ON db1.grades TO aman;```

* Allow multiple privilege to specific tables.
  * ```GRANT SELECT (id, name, subj, grade), UPDATE (name, grade) ON db1.grades TO aman;```


### REVOKE PREVILEGE (Opposite of GRANT)
* ```REVOKE INSERT, UPDATE ON db1.logs FROM logger@localhost;```
* ```REVOKE CREATE, DROP ON db1.* FROM aman@amanyadav.net;```
* ```REVOKE DELETE ON www.menu FROM webmaster@localhost;```
* ```REVOKE UPDATE (name, address) ON sales.customers FROM aman@amanyadav.net;```


### GRANT in ADVANCE
* ```GRANT ALL ON web.* TO www@'%.amanyadav.net' IDENTIFIED BY 'secret';```
* ```REVOKE ALL ON web.* FROM www@'%.amanyadav.net';```


### MySQL lets users grant other users the same privileges they have, via the special WITH GRANT OPTION clause of the GRANT command
* ```GRANT SELECT, DELETE, INSERT, UPDATE, CREATE, DROP, INDEX ON inventory.* TO aman@localhost WITH GRANT OPTION;```
* ```REVOKE GRANT OPTION ON players.* FROM aman@localhost;```

### Limiting Resource Usage
* ```GRANT SELECT ON *.* TO aman WITH MAX_QUERIES_PER_HOUR 5;```
* ```GRANT SELECT ON *.* TO aman WITH MAX_UPDATES_PER_HOUR 5;```
* ```GRANT SELECT ON *.* TO aman WITH MAX_CONNECTIONS_PER_HOUR 3;```
* ```GRANT SELECT, INSERT, aman, DELETE ON *.* TO supervisor WITH MAX_QUERIES_PER_HOUR 50 MAX_UPDATES_PER_HOUR 10 MAX_CONNECTIONS_PER_HOUR 4;```

```diff
- NOTE: Such usage limits cannot be specified per-database or per-table. They can only be specified in the global context, by using an ON *.* clause in the GRANT command.
```

### RESET THE INTERNAL COUNTERS
* ```FLUSH USER_RESOURCES;```


### ADMIN PREVILAGE
* ```GRANT ALL PRIVILEGES ON *.* TO amanyadav@localhost IDENTIFIED BY 'aman';```

ABOVE SINGLE COMMAND CAN BE ALSO ACHIEVED BY THIS COMBINATION COMMAND
* ```INSERT INTO user (Host, User, Password) VALUES('localhost', 'aman', PASSWORD('secret'));```
* ```INSERT INTO user (Host, User, Password, Select_priv, Insert_priv, Update_priv, Delete_priv, Create_priv, Drop_priv, Reload_priv, Shutdown_priv, Process_priv, File_priv, Grant_priv, References_priv, Index_priv, Alter_priv) VALUES ('localhost', 'aman', PASSWORD('secret'), 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y');```
* ```FLUSH PRIVILEGES;```


### SHOW PRIVILEGES
* ```SHOW GRANTS FOR aman@localhost;```
* ```SHOW GRANTS FOR root;```

```diff
- NOTE: Privileges set using GRANT and REVOKE are immediately activated (as demonstrated in one of the examples in the preceding section). Privileges set via regular SQL queries, however, require a server reload to come into effect. A server reload can be accomplished via the FLUSH PRIVILEGES command, as in the following:
```

* ```FLUSH PRIVILEGES;```


### Changing User Passwords
* ```mysql -h localhost -u aman -secret```
* ```INSERT INTO user (Host, User, Password) VALUES('amanyadav.net', 'aman', PASSWORD('secret'));```
* ```UPDATE user SET Password = PASSWORD('secret') WHERE Host = 'amanyadav.net' AND User = 'aman';```
* ```FLUSH PRIVILEGES;```

### CAN BE ALSO ACHIEVED BY 
* ```SET PASSWORD FOR aman@amanyadav.net = PASSWORD('secret');```
* ```GRANT USAGE ON *.* TO aman@amanyadav.net IDENTIFIED BY 'secret';```

### DROP USERS
* ```DROP user  'aman'@'localhost';```

### BACKING UP DATABASES
* ```mysqldump -p --databases data > ~/Desktop/data.sql```
* ```mysqldump -p --all-databases > dump.sql```

### RESTORING DATABASES
* ```mysql < dump.sql```
* ```source dump.sql```

### IF CREATE DATABASE IS MISSING IN dump.sql
* ```mysqladmin create db1```
* ```mysql db1 < dump.sql```

### SQL SCRIPT TO RANDOMLY UPDATE A MISSING FILED VALUE IN A TABLE
Consider two table **souce**, and **equipment**. Where source has a filed called **quipment_id** that should be pointed to the id of some random row in **equipment** table. And this script is to run through all the source and find if there is any row with **equipment_id as null** then randomly assign some id from equipment table to it.
```
-- 1. Start delimiter
DELIMITER $$

-- 2. Drop procedure if exists.
DROP PROCEDURE IF EXISTS FIX_SOURCE_EQUIPMENT_ID$$

-- 3. Create new procedure
CREATE PROCEDURE FIX_SOURCE_EQUIPMENT_ID()
BEGIN

-- 4. Declare variables.
DECLARE x INT;
DECLARE numberofNull INT;

-- 5. Set initial variables value.
SET x = 1;
SET numberofNull = (SELECT COUNT(id) FROM source WHERE equipment_id IS NULL);
    
-- 6. Start repeater.
REPEAT
    -- 7. start transaction.
    START TRANSACTION;
    
    -- 8. Perform queries.
    SELECT @id:=id FROM source WHERE equipment_id IS NULL;
    UPDATE source SET equipment_id = (SELECT id FROM equipment ORDER BY RAND() LIMIT 1) WHERE id=@id;  
    
    -- 9. Commit transaction and increment the variable value.
    COMMIT;
    SET  x = x + 1;

    -- 10. Terminate repeater if reaches the number of null source with null equipment id.
    UNTIL x  > numberofNull
END REPEAT;
END$$ 
DELIMITER ;

-- 11. Call the procedure.
CALL FIX_SOURCE_EQUIPMENT_ID();
```
