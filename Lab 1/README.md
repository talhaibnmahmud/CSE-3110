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

## Connect to user

- Connect to user (In Terminal)

  ```bash
  sqlplus [username]@localhost/[PDB_NAME]
  ```

## Lab Work

- Create a database table named `test` having fields `(id, name, mark)` with types `[number(3), varchar(20), number(3, 2)]` respectively.
- Insert some values into the table
- Select all the values from the tables to display
