
CREATE TABLE banks (
                id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                name VARCHAR( 255 ) NOT NULL ,
                country VARCHAR( 255 ) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE branches (
                id TINYINT NOT NULL AUTO_INCREMENT ,
                name VARCHAR( 255 ) NOT NULL ,
                address VARCHAR( 255 ) NOT NULL ,
                bank_id INT NOT NULL ,
                PRIMARY KEY ( id ) ,
                FOREIGN KEY ( bank_id )
                                REFERENCES banks( id )
                                ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE employees (
                id INT NOT NULL AUTO_INCREMENT ,
                name  VARCHAR( 255 ) NOT NULL ,
                branch_id TINYINT NOT NULL,
                PRIMARY KEY ( id ),
                FOREIGN KEY ( branch_id )
                                REFERENCES branches( id )
                                ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE customers (
                id INT NOT NULL AUTO_INCREMENT ,
                name VARCHAR( 255 ) NOT NULL ,
                address VARCHAR( 255 ) NULL DEFAULT NULL ,
                bank_mgr INT NULL ,
                PRIMARY KEY ( id ) ,
                FOREIGN KEY ( bank_mgr )
                                REFERENCES employees( id )
) ENGINE = InnoDB;

CREATE TABLE accounts (
                id INT NOT NULL AUTO_INCREMENT ,
                amount DECIMAL( 9,2 ) NOT NULL ,
                type TINYINT NOT NULL,
                branch_id TINYINT NOT NULL,
                customer_id INT NOT NULL,
                PRIMARY KEY ( id ),
                FOREIGN KEY ( branch_id )
                                REFERENCES branches( id )
                                ON DELETE CASCADE ON UPDATE CASCADE,
                FOREIGN KEY ( customer_id )
                                REFERENCES customers( id )
                                ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB;
