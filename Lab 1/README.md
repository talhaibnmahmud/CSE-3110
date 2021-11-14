# CSE 3110 (Lab 1)

## Initialization

- Connect to Root (In Terminal)

  ```bash
  sqlplus \ as sysdba
  ```

- Show list of PDBs

  ```sql
  SHOW PDBS
  ```

- Connect to PDB

  ```sql
  ALTER SESSION SET CONTAINER=[PDB_NAME];
  ```

- Create user

  ```sql
  CREATE USER [username] IDENTIFIED BY [pass];
  ```

- Grant Privileges

  ```sql
  GRANT [PRIVILEGES] TO [username];

  -- Example
  -- GRANT ALL PRIVILEGES TO username;
  ```

- Disconnect from Root

  ```sql
  DISCONNECT
  ```

## Create PDBs

- Connect to SYS AS SYSDBA
- Create PDB

  ```sql
  CREATE PLUGGABLE DATABASE [db_name] ADMIN USER [username] IDENTIFIED BY [pass] FILE_NAME_CONVERT=('C:\app\ASUS\product\21c\oradata\XE\pdbseed\', 'C:\app\ASUS\product\21c\oradata\XE\[db_name]\');
  ```

- Disconnect from CDB$ROOT
- Connect to the created PDB

  ```bash
  SQLPLUS SYS/[pass]@localhost/[db_name] AS SYSDBA
  ```

  OR

  ```sql
  CONNECT SYS/[pass]@localhost/[db_name] AS SYSDBA
  ```

- Grant permissions

  ```sql
  GRANT ALL PRIVILEGES TO [username]
  ```

- Disconnect from Root
- Connect to PDB as Admin (SQLPLUS)

  ```sql
  CONNECT [username]/[pass]@localhost/[db_name]
  ```

## Connect to user

- Connect to user (In Terminal)

  ```bash
  sqlplus [username]@localhost/[PDB_NAME]
  ```

  OR (In SQLPLUS)

  ```sql
  CONNECT [username]/[pass]@localhost/[db_name]
  ```

## Lab Work

- Create a database table named `test` having fields `(id, name, mark)` with types `[number(3), varchar(20), number(3, 2)]` respectively.
- Insert some values into the table
- Select all the values from the tables to display
