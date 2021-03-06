INSERT INTO banks (id ,name ,country)
VALUES                ( 1 , 'Bulbank', 'Bulgaria' ),
                ( 2 , 'Wells Fargo', 'USA' ),
                ( 3 , 'Bank of America', 'USA' ),
                ( 4 , 'Societe General', 'France' );
                commit;

INSERT INTO branches (id ,name ,address, bank_id)
VALUES                ( 1 , 'Serdica', 'Sofia centar', 1 ),
                ( 2 , 'Slatina', 'Sofia Geo Milev', 1 ),
                ( 3 , 'Manhattan', 'Manhattan, New York', 2 ),
                ( 4 , 'LA', 'Los Angeles', 3 ),
                ( 5 , 'Paris', 'Paris', 4 ),
                ( 6 , 'Marseilles', 'Marseilles', 4 );

INSERT INTO employees (id ,name , branch_id)
VALUES ( 1 , 'Ivan Ivanov', 1 ),
                ( 2 , 'Ivan Stoianov', 1 ),
                ( 3 , 'Mihail Zahariev', 1 ),
                ( 4 , 'Milen Stoilov', 2 ),
                ( 5 , 'Svilen Petrov', 2 ),
                ( 6 , 'Ilian Stoianov', 2 ),
                ( 7 , 'Petar Petrov', 2 ),
                ( 8 , 'Jimmy Carter', 3 ),
                ( 9 , 'John Smith', 3 ),
                ( 10 , 'Mary Jane', 3 ),
                ( 11 , 'James Pitt', 4 ),
                ( 12 , 'Francoa Dupres', 5 ),
                ( 13 , 'Alfonso Levi', 6 );

INSERT INTO customers (id ,name , bank_mgr)
VALUES ( 1 , 'Todor Ivanov', 1 ),
                ( 2 , 'Petko Stoianov', 1 ),
                ( 3 , 'Neno Nenov', 2 ),
                ( 4 , 'Mariana Zaharieva', 3 ),
                ( 5 , 'Elica Zaharieva', 3 ),
                ( 6 , 'Atanas Petrov', 4 ),
                ( 7 , 'Ivan Ivanov', 4 ),
                ( 8 , 'Zlatomir Petrov', 4 ),
                ( 9 , 'Mihail Ivchev', 5 ),
                ( 10 , 'Todor Shtilianov', 6 ),
                ( 11 , 'Ivailo Ivanov', 7 ),
                ( 12 , 'George Lucas', 8 ),
                ( 13 , 'George Harison', 8 ),
                ( 14 , 'Michael Jackson', 8 ),
                ( 15 , 'Tony Martin', 8 ),
                ( 16 , 'Tony McCarter', 10 ),
                ( 17 , 'Alexander Smith', 11 ),
                ( 18 , 'Maria Smith', 11 ),
                ( 19 , 'Alain Delrick', 12 ),
                ( 20 , 'Devry Henry', 12 ),
                ( 21 , 'Lenard Renne', 12 ),
                ( 22 , 'Fontaine Rupert', 13 );

INSERT INTO accounts (id ,amount , type , customer_id, branch_id)
VALUES ( 1 , 156.38, 2, 1, 1 ),
                ( 2 , 136.22, 1, 2, 1 ),
                ( 3 , 42.98, 1, 3, 1 ),
                ( 4 , 1236.33, 1, 4, 1 ),
                ( 5 , 211.98, 2, 5, 1 ),
                ( 6 , 1200.00, 2, 6, 2 ),
                ( 7 , 133.48, 1, 7, 2 ),
                ( 8 , 256.41, 2, 8, 2 ),
                ( 9 , 1331.50, 2, 9, 2 ),
                ( 10 , 116.88, 2, 10, 2 ),
                ( 11 , 200.91, 1, 10, 2 ),
                ( 12 , 99.18, 1, 11, 2 ),
                ( 13 , 6712.52, 1, 12, 3 ),
                ( 14 , 12000.56, 1, 12, 3 ),
                ( 15 , 322.99, 2, 12, 3 ),
                ( 16 , 991.63, 1, 13, 3 ),
                ( 17 , 559.32, 2, 14, 3 ),
                ( 18 , 680.13, 1, 15, 3 ),
                ( 19 , 532.57, 1, 15, 3 ),
                ( 20 , 402.26, 1, 16, 3 ),
                ( 21 , 1536.91, 2, 17, 4 ),
                ( 22 , 14921.43, 1, 18, 4 ),
                ( 23 , 3910.50, 1, 19, 5 ),
                ( 24 , 231.37, 1, 20, 5 ),
                ( 25 , 7236.60, 1, 21, 5 ),
                ( 26 , 2226.63, 2, 21, 5 ),
                ( 27 , 500.00, 2, 22, 6 );
