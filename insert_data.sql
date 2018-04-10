/*

****
INSERT DATA
****

*/

/*

****
INSERT INTO BRANCH_TABLE
****

*/
    
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    'Market St.', 
    'Edinburgh', 
    'EH1 5AB', 
    'E4', 
    phone_type_table(phone_nested('Branch','03457404404')));
    
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '16 King St.', 
    'London', 
    'WC2E 8JF', 
    'L5', 
    phone_type_table(phone_nested('Branch','03457404404')));   
    
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '3 Earl Grey St.', 
    'Edinburgh', 
    'EH3 9BN', 
    'E1', 
    phone_type_table(phone_nested('Branch','03457404404'))); 
    
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '118 Princes St.', 
    'Edinburgh', 
    'EH2 4AA', 
    'E2', 
    phone_type_table(phone_nested('Branch','03457404404')));     
    
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '76 Hanover St.', 
    'Edinburgh', 
    'EH2 1EL', 
    'E3', 
    phone_type_table(phone_nested('Branch','03457404404')));   
    
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '1 Woburn Pl.', 
    'London', 
    'WC1H 0LQ', 
    'L1', 
    phone_type_table(phone_nested('Branch','03457404404')));      
    
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '102 Brompton Rd.', 
    'London', 
    'SW3 1JJ', 
    'L2', 
    phone_type_table(phone_nested('Branch','03457404404'))); 
    
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '133 Regent St', 
    'London', 
    'W1B 4HX', 
    'L3', 
    phone_type_table(phone_nested('Branch','03457404404')));      
    
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '90 Baker St', 
    'London', 
    'W1U 6AX', 
    'L4', 
    phone_type_table(phone_nested('Branch','03457404404')));         
    
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '6 St Andrews St', 
    'Cambridge', 
    ' CB2 3AX', 
    'C1', 
    phone_type_table(phone_nested('Branch','01473369997')));  
	
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '65 Midland Rd', 
    'Bedford', 
    'MK40 1PR', 
    'C2', 
    phone_type_table(phone_nested('Branch','01473369997')));  
	
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '71 Abington St', 
    'Northampton', 
    'NN1 2BH', 
    'C3', 
    phone_type_table(phone_nested('Branch','01473369997')));  
	
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '3 Brand St', 
    'Hitchin', 
    'SG5 1LP', 
    'C4', 
    phone_type_table(phone_nested('Branch','01473369997')));  
	
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '37 Market Place', 
    'Stevenage', 
    'SG1 1DH', 
    'C5', 
    phone_type_table(phone_nested('Branch','01473369997')));  
	
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '35 High St', 
    'Ware', 
    'SG12 9BD', 
    'C6', 
    phone_type_table(phone_nested('Branch','01473369997')));  
	
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '118 High St', 
    'Barnet', 
    'EN5 5XQ', 
    'D1', 
    phone_type_table(phone_nested('Branch','01473369997')));  
	
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '834 High Rd', 
    'London', 
    'N12 9RE', 
    'D2', 
    phone_type_table(phone_nested('Branch','01473369997')));  
	
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '82 High Rd', 
    'London', 
    'IG1 1DL', 
    'D3', 
    phone_type_table(phone_nested('Branch','01473369997')));  
	
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '102 Hilldene Ave', 
    'Romford', 
    'RM3 8DU', 
    'D4', 
    phone_type_table(phone_nested('Branch','01473369997')));  
	
INSERT INTO branch_table (street, city, postcode, branch_id, phone) VALUES( 
    '41 High St', 
    'Ipswich', 
    'IP7 5AE', 
    'D5', 
    phone_type_table(phone_nested('Branch','01473369997')));  
    

    
    
/*

****
INSERT INTO ACCOUNT_TABLE
****

*/    
    
INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    45645654,
    'Basic', 
    300.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E4'), 
    '0.02', 
    500,
    '21-FEB-2015'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    64758904,
    'Savings', 
    34634.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E4'), 
    '0.01', 
    0,
    '21-FEB-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    34528754,
    'Savings', 
    10532.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E4'), 
    '0.01', 
    0,
    '21-FEB-2013'
);   
    
INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    76895465,
    'Basic', 
    274.63, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E4'), 
    '0.01', 
    0,
    '21-FEB-2016'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    06057342,
    'Savings', 
    5894.63, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E4'), 
    '0.01', 
    0,
    '22-Aug-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    92157579,
    'Savings', 
    9576.63, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L5'), 
    '0.01', 
    0,
    '05-Sep-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    36428802,
    'Basic', 
    564.34, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L5'), 
    '0.01', 
    500,
    '19-Jan-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    30360522,
    'Savings', 
    6854.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L5'), 
    '0.01', 
    0,
    '13-Jun-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    45947960,
    'Savings', 
    7596.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L5'), 
    '0.01', 
    0,
    '05-Mar-2012'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    61759251,
    'Basic', 
    222.34, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L5'), 
    '0.01', 
    200,
    '19-Jan-2017'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    47935252,
    'Savings', 
    5748.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E1'), 
    '0.01', 
    0,
    '13-Jun-2015'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    91908038,
    'Savings', 
    6354.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E1'), 
    '0.01', 
    0,
    '05-Mar-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    48566965,
    'Basic', 
    852.34, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E1'), 
    '0.01', 
    200,
    '19-Jan-2018'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    26502506,
    'Savings', 
    1596.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E1'), 
    '0.01', 
    0,
    '13-Jun-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    03621280,
    'Savings', 
    7586.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E1'), 
    '0.02', 
    0,
    '05-Mar-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    32116769,
    'Basic', 
    454.34, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E2'), 
    '0.01', 
    200,
    '19-Jan-2015'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    99481068,
    'Savings', 
    6562.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E2'), 
    '0.01', 
    0,
    '13-Jun-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    55163952,
    'Savings', 
    4548.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E2'), 
    '0.02', 
    0,
    '05-Mar-2012'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    58489233,
    'Basic', 
    958.34, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E2'), 
    '0.01', 
    600,
    '19-Jan-2012'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    82516698,
    'Savings', 
    85932.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E2'), 
    '0.01', 
    0,
    '13-Jun-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    58411184,
    'Savings', 
    8575.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E3'), 
    '0.02', 
    0,
    '05-Mar-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    69732823,
    'Basic', 
    268.34, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E3'), 
    '0.01', 
    200,
    '19-Jan-2016'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    80129532,
    'Savings', 
    7542.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E3'), 
    '0.01', 
    0,
    '13-Jun-2015'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    04834745,
    'Savings', 
    9562.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E3'), 
    '0.02', 
    0,
    '05-Mar-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    16095573,
    'Basic', 
    300.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'E3'), 
    '0.02', 
    500,
    '21-FEB-2015'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    35953164,
    'Savings', 
    9636.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L1'), 
    '0.01', 
    0,
    '13-Jun-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    52965833,
    'Savings', 
    7585.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L1'), 
    '0.02', 
    0,
    '05-Mar-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    40130365,
    'Basic', 
    252.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L1'), 
    '0.02', 
    500,
    '21-FEB-2015'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    47016078,
    'Savings', 
    1258.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L1'), 
    '0.01', 
    0,
    '13-Jan-2018'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    31866334,
    'Savings', 
    2535.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L1'), 
    '0.02', 
    0,
    '05-Mar-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    83672918,
    'Basic', 
    751.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L2'), 
    '0.02', 
    500,
    '21-FEB-2015'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    12667691,
    'Savings', 
    5256.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L2'), 
    '0.01', 
    0,
    '13-Jan-2018'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    05545073,
    'Savings', 
    6852.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L2'), 
    '0.02', 
    0,
    '05-Mar-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    64793745,
    'Basic', 
    154.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L2'), 
    '0.02', 
    800,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    88736868,
    'Savings', 
    5256.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L2'), 
    '0.01', 
    0,
    '13-Jan-2018'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    03608694,
    'Savings', 
    6852.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    0,
    '05-Mar-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    32722516,
    'Basic', 
    154.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    500,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    65004171,
    'Savings', 
    2123.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.01', 
    0,
    '13-Jan-2018'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    95646311,
    'Savings', 
    8562.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    0,
    '05-Mar-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    59641812,
    'Basic', 
    345.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    500,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    85967485,
    'Basic', 
    345.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    500,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    74853652,
    'Basic', 
    345.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    500,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    85963258,
    'Basic', 
    123.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    675,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    14786952,
    'Basic', 
    638.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    750,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    85479652,
    'Basic', 
    418.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    300,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    36585412,
    'Basic', 
    125.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    640,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    12589645,
    'Basic', 
    665.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    120,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    14785963,
    'Basic', 
    547.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    '0.02', 
    800,
    '21-FEB-2015'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    75865812,
    'Basic', 
    232.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L4'), 
    '0.02', 
    500,
    '21-FEB-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    12586945,
    'Savings', 
    1245.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L4'), 
    '0.01', 
    300,
    '13-Jan-2015'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    85475965,
    'Savings', 
    6566.66, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L4'), 
    '0.02', 
    0,
    '05-Mar-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    36536258,
    'Basic', 
    321.00, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L4'), 
    '0.02', 
    800,
    '21-FEB-2013'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    78965412,
    'Savings', 
    5256.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'L4'), 
    '0.01', 
    0,
    '13-Jan-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    31283708,
    'Basic', 
    232.01, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C1'), 
    '0.02', 
    500,
    '21-FEB-2012'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    64569859,
    'Savings', 
    1245.22, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C1'), 
    '0.01', 
    0,
    '13-Jan-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    98229922,
    'Savings', 
    6566.63, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C1'), 
    '0.02', 
    0,
    '05-Mar-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    83163235,
    'Basic', 
    321.04, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C1'), 
    '0.02', 
    800,
    '21-FEB-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    30176868,
    'Savings', 
    5256.25, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C1'), 
    '0.01', 
    0,
    '13-Jan-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    96489552,
    'Basic', 
    232.02, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C2'), 
    '0.02', 
    500,
    '21-Feb-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    01251343,
    'Savings', 
    1245.23, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C2'), 
    '0.01', 
    0,
    '13-Feb-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    18587714,
    'Savings', 
    6566.64, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C2'), 
    '0.02', 
    0,
    '05-Feb-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    38749632,
    'Basic', 
    321.05, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C2'), 
    '0.02', 
    800,
    '21-Feb-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    94605418,
    'Savings', 
    5256.26, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C2'), 
    '0.01', 
    0,
    '13-Feb-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    71806754,
    'Basic', 
    232.03, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C3'), 
    '0.02', 
    500,
    '21-Mar-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    89917343,
    'Savings', 
    1245.24, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C3'), 
    '0.01', 
    0,
    '13-Mar-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    78938385,
    'Savings', 
    6566.65, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C3'), 
    '0.02', 
    0,
    '05-Mar-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    95617908,
    'Basic', 
    321.06, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C3'), 
    '0.02', 
    800,
    '21-Mar-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    50178026,
    'Savings', 
    5256.27, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C3'), 
    '0.01', 
    0,
    '13-Mar-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    20931131,
    'Basic', 
    132.03, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C4'), 
    '0.02', 
    500,
    '21-Apr-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    24363956,
    'Savings', 
    245.24, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C4'), 
    '0.01', 
    0,
    '13-Apr-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    68137972,
    'Savings', 
    1566.65, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C4'), 
    '0.02', 
    0,
    '05-Apr-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    17564299,
    'Basic', 
    121.06, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C4'), 
    '0.02', 
    800,
    '21-Apr-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    19440987,
    'Savings', 
    1256.27, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C4'), 
    '0.01', 
    0,
    '13-Apr-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    93243207,
    'Basic', 
    232.03, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C5'), 
    '0.02', 
    500,
    '21-May-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    17664583,
    'Savings', 
    245.24, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C5'), 
    '0.01', 
    0,
    '13-May-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    17433648,
    'Savings', 
    2566.65, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C5'), 
    '0.02', 
    0,
    '05-May-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    12302490,
    'Basic', 
    221.06, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C5'), 
    '0.02', 
    800,
    '21-May-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    89582951,
    'Savings', 
    2256.27, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C5'), 
    '0.01', 
    0,
    '13-May-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    19605359,
    'Basic', 
    332.03, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C6'), 
    '0.02', 
    500,
    '21-Jun-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    54118916,
    'Savings', 
    345.24, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C6'), 
    '0.01', 
    0,
    '13-Jun-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    24443016,
    'Savings', 
    3566.65, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C6'), 
    '0.02', 
    0,
    '05-Jun-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    23553587,
    'Basic', 
    321.06, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C6'), 
    '0.02', 
    800,
    '21-Jun-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    15157591,
    'Savings', 
    3256.27, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'C6'), 
    '0.01', 
    0,
    '13-Jun-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    58976186,
    'Basic', 
    432.03, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D1'), 
    '0.02', 
    500,
    '21-Jul-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    94836115,
    'Savings', 
    445.24, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D1'), 
    '0.01', 
    0,
    '13-Jul-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    43310276,
    'Savings', 
    4566.65, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D1'), 
    '0.02', 
    0,
    '05-Jul-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    85291413,
    'Basic', 
    421.06, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D1'), 
    '0.02', 
    800,
    '21-Jul-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    10016606,
    'Savings', 
    4256.27, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D1'), 
    '0.01', 
    0,
    '13-Jul-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    87905857,
    'Basic', 
    532.03, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D2'), 
    '0.02', 
    500,
    '21-Aug-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    48113899,
    'Savings', 
    545.24, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D2'), 
    '0.01', 
    0,
    '13-Aug-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    10327275,
    'Savings', 
    5566.65, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D2'), 
    '0.02', 
    0,
    '05-Aug-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    16509941,
    'Basic', 
    521.06, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D2'), 
    '0.02', 
    800,
    '21-Aug-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    07055435,
    'Savings', 
    5256.27, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D2'), 
    '0.01', 
    0,
    '13-Aug-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    44209067,
    'Basic', 
    632.03, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D3'), 
    '0.02', 
    500,
    '21-Sep-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    11448740,
    'Savings', 
    645.24, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D3'), 
    '0.01', 
    0,
    '13-Sep-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    85817240,
    'Savings', 
    6566.65, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D3'), 
    '0.02', 
    0,
    '05-Sep-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    85545077,
    'Basic', 
    621.06, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D3'), 
    '0.02', 
    800,
    '21-Sep-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    30907872,
    'Savings', 
    6256.27, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D3'), 
    '0.01', 
    0,
    '13-Sep-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    38847091,
    'Basic', 
    732.03, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D4'), 
    '0.02', 
    500,
    '21-Oct-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    34406110,
    'Savings', 
    745.24, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D4'), 
    '0.01', 
    0,
    '13-Oct-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    22902071,
    'Savings', 
    7566.65, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D4'), 
    '0.02', 
    0,
    '05-Oct-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    97868164,
    'Basic', 
    721.06, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D4'), 
    '0.02', 
    800,
    '21-Oct-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    14449216,
    'Savings', 
    7256.27, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D4'), 
    '0.01', 
    0,
    '13-Oct-2010'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    28416646,
    'Basic', 
    832.03, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D5'), 
    '0.02', 
    500,
    '21-Nov-2014'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    65119336,
    'Savings', 
    845.24, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D5'), 
    '0.01', 
    0,
    '13-Nov-2011'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    13337254,
    'Savings', 
    8566.65, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D5'), 
    '0.02', 
    0,
    '05-Nov-2013'
); 

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    26740211,
    'Basic', 
    821.06, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D5'), 
    '0.02', 
    800,
    '21-Nov-2012'
);

INSERT INTO account_table (ACCOUNT_NUMBER, ACC_TYPE, BALANCE, BRANCH_ID, INTEREST_RATE, LIMIT_OF_FREE_OD, OPEN_DATE) VALUES (
    31024580,
    'Savings', 
    8256.27, 
    (select ref(b) FROM branch_table b WHERE b.branch_id = 'D5'), 
    '0.01', 
    0,
    '13-Nov-2010'
); 

/*

****
INSERT INTO JOB_TABLE
****

*/    
    
INSERT INTO job_table (job_id, job_title, salary) VALUES (
    '000001', 
    'Head', 
    100000); 
    
INSERT INTO job_table (job_id, job_title, salary) VALUES (
    '000002', 
    'Manager', 
    75000);   
    
INSERT INTO job_table (job_id, job_title, salary) VALUES (
    '000003', 
    'Project Leader', 
    50000);     

INSERT INTO job_table (job_id, job_title, salary) VALUES (
    '000004', 
    'Accountant', 
    35000); 
    
INSERT INTO job_table (job_id, job_title, salary) VALUES (
    '000005', 
    'Cashier', 
    25000); 
    
/*

****
INSERT INTO EMPLOYEE_TABLE
****

*/    
    
INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'John', 'Smith'),
    address_type(
        'JohnStreet', 
        'JohnCity',
        'Post'),
    'N1001',
    phone_type_table(phone_nested('Mobile','07701234566'), phone_nested('Home','0131 496 0355')),
    1, 
    '21-Feb-04', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 1)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Max', 'Mustermann'),
    address_type(
        'MaxStreet', 
        'MaxCity',
        'Post'),
    'N1002',
    phone_type_table(phone_nested('Mobile','07700900553'), phone_nested('Home','0131 496 0274')),
    2, 
    '21-Aug-08', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 1)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Candace', 'Gibbon'),
    address_type(
        'CandaceStreet', 
        'CandaceCity',
        'Post'),
    'N1003',
    phone_type_table(phone_nested('Mobile','07700900938'), phone_nested('Home','0131 496 0101')),
    3, 
    '21-Aug-09', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 2)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Esther', 'Moure'),
    address_type(
        'EstherStreet', 
        'EstherCity',
        'Post'),
    'N1004',
    phone_type_table(phone_nested('Mobile','07700900864'), phone_nested('Home','0131 496 0275')),
    4, 
    '21-Aug-08', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 2)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Jedidiah  ', 'Cammelli'),
    address_type(
        'Jedidiah Street', 
        'Jedidiah City',
        'Post'),
    'N1005',
    phone_type_table(phone_nested('Mobile','07700900325'), phone_nested('Home','0131 496 0286')),
    5, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 4)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Laurel', 'Withington'),
    address_type(
        'LaurelStreet', 
        'LaurelCity',
        'Post'),
    'N1006',
    phone_type_table(phone_nested('Mobile','07700900263'), phone_nested('Home','0131 496 0855')),
    6, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 1)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Bernice', 'Kurkjian'),
    address_type(
        'BerniceStreet', 
        'BerniceCity',
        'Post'),
    'N1007',
    phone_type_table(phone_nested('Mobile','07700900535'), phone_nested('Home','0121 496 0196')),
    7, 
    '21-Aug-13', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 6)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Susanna', 'Gibbon'),
    address_type(
        'SusannaStreet', 
        'SusannaCity',
        'Post'),
    'N1008',
    phone_type_table(phone_nested('Mobile','07700900848'), phone_nested('Home','0121 496 0368')),
    8, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 7)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Priscilla', 'Moure'),
    address_type(
        'PriscillaStreet', 
        'PriscillaCity',
        'Post'),
    'N1009',
    phone_type_table(phone_nested('Mobile','07700900041'), phone_nested('Home','0121 496 0403')),
    9, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 7)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Essie', 'Cammelli'),
    address_type(
        'EssieStreet', 
        'EssieCity',
        'Post'),
    'N1010',
    phone_type_table(phone_nested('Mobile','07700900160'), phone_nested('Home','0121 496 0766')),
    10, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 3)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Honour', 'Tosteson'),
    address_type(
        '3 Dinmont Dr.', 
        'Edinburgh',
        'EH16 5RF'),
    'N1011',
    phone_type_table(phone_nested('Mobile','07700900410'), phone_nested('Home','0121 496 0937')),
    11, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 1)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Bonnie', 'Davis'),
    address_type(
        '21 Durward Grove', 
        'Edinburgh',
        'EH16 5RS'),
    'N1012',
    phone_type_table(phone_nested('Mobile','07700900095'), phone_nested('Home','0121 496 0410')),
    12, 
    '21-Aug-13', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 11)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Betty', 'Walker'),
    address_type(
        'BettyStreet', 
        'BettyCity',
        'Post'),
    'N1013',
    phone_type_table(phone_nested('Mobile','07700900815'), phone_nested('Home','029 2018 0579')),
    13, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 12)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Lois', 'Adams'),
    address_type(
        'LoisStreet', 
        'LoisCity',
        'Post'),
    'N1014',
    phone_type_table(phone_nested('Mobile','07700900012'), phone_nested('Home','029 2018 0911')),
    14, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 12)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Frances', 'Evans'),
    address_type(
        'FrancesStreet', 
        'FrancesCity',
        'Post'),
    'N1015',
    phone_type_table(phone_nested('Mobile','07700900845'), phone_nested('Home','029 2018 0765')),
    15, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 2)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Michelle', 'Ramirez'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1016',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    16, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 1)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Janet', 'Brooks'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1017',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    17, 
    '21-Aug-13', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 16)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Tammy', 'Russell'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1018',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    18, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 17)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Kathryn', 'Rogers'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1019',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    19, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 17)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Heather', 'Wood'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1020',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    20, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 3)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Rachel', 'Gray'),
    address_type(
        'RachelStreet', 
        'RachelCity',
        'Post'),
    'N1021',
    phone_type_table(phone_nested('Mobile','07700900633'), phone_nested('Home','0191 498 0932')),
    21, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 1)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Deborah', 'Lee'),
    address_type(
        'DeborahStreet', 
        'DeborahCity',
        'Post'),
    'N1022',
    phone_type_table(phone_nested('Mobile','07700900682'), phone_nested('Home','0191 498 0754')),
    22, 
    '21-Aug-13', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 21)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Lori', 'Russell'),
    address_type(
        'LoriStreet', 
        'LoriCity',
        'Post'),
    'N1023',
    phone_type_table(phone_nested('Mobile','07700900663'), phone_nested('Home','0191 498 0265')),
    23, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 22)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Jessica', 'Young'),
    address_type(
        'JessicaStreet', 
        'JessicaCity',
        'Post'),
    'N1024',
    phone_type_table(phone_nested('Mobile','07700900041'), phone_nested('Home','0191 498 0236')),
    24, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 22)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'Marilyn', 'Hernandez'),
    address_type(
        'MarilynStreet', 
        'MarilynCity',
        'Post'),
    'N1025',
    phone_type_table(phone_nested('Mobile','07700900760'), phone_nested('Home','0141 496 0039')),
    25, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'E3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 2)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Stephen', 'Gray'),
    address_type(
        'StephenStreet', 
        'StephenCity',
        'Post'),
    'N1026',
    phone_type_table(phone_nested('Mobile','07700900219'), phone_nested('Home','0141 496 0948')),
    26, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 1)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Albert', 'Perry'),
    address_type(
        'DeborahStreet', 
        'DeborahCity',
        'Post'),
    'N1027',
    phone_type_table(phone_nested('Mobile','07700900694'), phone_nested('Home','0141 496 0000')),
    27, 
    '21-Aug-14', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 26)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Gregory', 'Simmons'),
    address_type(
        'GregoryStreet', 
        'GregoryCity',
        'Post'),
    'N1028',
    phone_type_table(phone_nested('Mobile','07700900450'), phone_nested('Home','0141 496 0207')),
    28, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 27)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Christopher', 'Young'),
    address_type(
        'ChristopherStreet', 
        'ChristopherCity',
        'Post'),
    'N1029',
    phone_type_table(phone_nested('Mobile','07700900314'), phone_nested('Home','0141 496 0251')),
    29, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 3)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Bruce', 'Barnes'),
    address_type(
        'BruceStreet', 
        'BruceCity',
        'Post'),
    'N1030',
    phone_type_table(phone_nested('Mobile','07700900272'), phone_nested('Home','0141 496 0051')),
    30, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 29)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Gary', 'Sanchez'),
    address_type(
        'GaryStreet', 
        'GaryCity',
        'Post'),
    'N1031',
    phone_type_table(phone_nested('Mobile','07700900700'), phone_nested('Home','0113 496 0953')),
    31, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 1)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Jack', 'Perry'),
    address_type(
        'JackStreet', 
        'JackCity',
        'Post'),
    'N1032',
    phone_type_table(phone_nested('Mobile','07700900105'), phone_nested('Home','0113 496 0895')),
    32, 
    '21-Aug-14', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 31)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Kenneth', 'Diaz'),
    address_type(
        'KennethStreet', 
        'KennethCity',
        'Post'),
    'N1033',
    phone_type_table(phone_nested('Mobile','07700900955'), phone_nested('Home','0113 496 0052')),
    33, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 32)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Wayne', 'Adams'),
    address_type(
        'WayneStreet', 
        'WayneCity',
        'Post'),
    'N1034',
    phone_type_table(phone_nested('Mobile','07700900719'), phone_nested('Home','0113 496 0566')),
    34, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 32)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Brandon', 'Smith'),
    address_type(
        '2 Ellangowan Terrace', 
        'Edinburgh',
        'EH16 5TD'),
    'N1035',
    phone_type_table(phone_nested('Mobile','07700900855'), phone_nested('Home','0113 496 0070')),
    35, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 3)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Nicholas', 'Davis'),
    address_type(
        'NicholasStreet', 
        'NicholasCity',
        'Post'),
    'N1036',
    phone_type_table(phone_nested('Mobile','07700900475'), phone_nested('Home','0113 496 0981')),
    36, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 1)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Patrick', 'Kelly'),
    address_type(
        'PatrickStreet', 
        'PatrickCity',
        'Post'),
    'N1037',
    phone_type_table(phone_nested('Mobile','07700900485'), phone_nested('Home','0116 496 0515')),
    37, 
    '21-Aug-14', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 36)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Richard', 'Ross'),
    address_type(
        'RichardStreet', 
        'RichardCity',
        'Post'),
    'N1038',
    phone_type_table(phone_nested('Mobile','07700900758'), phone_nested('Home','0116 496 0549')),
    38, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 37)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Jose', 'Thompson'),
    address_type(
        'JoseStreet', 
        'JoseCity',
        'Post'),
    'N1039',
    phone_type_table(phone_nested('Mobile','07700900899'), phone_nested('Home','0116 496 0738')),
    39, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 37)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Randy', 'Collins'),
    address_type(
        'RandyStreet', 
        'RandyCity',
        'Post'),
    'N1040',
    phone_type_table(phone_nested('Mobile','07700900721'), phone_nested('Home','0116 496 0805')),
    40, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 39)
); 


INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'James', 'Jones'),
    address_type(
        'JamesStreet', 
        'JamesCity',
        'Post'),
    'N1041',
    phone_type_table(phone_nested('Mobile','07700900787'), phone_nested('Home','0116 496 0841')),
    41, 
    '21-Aug-13', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 1)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mrs', 'Jourdan', 'Smith'),
    address_type(
        'JourdanStreet', 
        'JourdanCity',
        'Post'),
    'N1042',
    phone_type_table(phone_nested('Mobile','07700900384'), phone_nested('Home','0116 496 0160')),
    42, 
    '21-Jun-14', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 41)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Richard', 'Ross'),
    address_type(
        'RichardStreet', 
        'RichardCity',
        'Post'),
    'N1043',
    phone_type_table(phone_nested('Mobile','07700900847'), phone_nested('Home','020 7946 0648')),
    43, 
    '21-May-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 42)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Jose', 'Thompson'),
    address_type(
        'JoseStreet', 
        'JoseCity',
        'Post'),
    'N1044',
    phone_type_table(phone_nested('Mobile','07700900225'), phone_nested('Home','020 7946 0889')),
    44, 
    '21-Jan-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 42)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Mr', 'Randy', 'Collins'),
    address_type(
        'RandyStreet', 
        'RandyCity',
        'Post'),
    'N1045',
    phone_type_table(phone_nested('Mobile','07700900324'), phone_nested('Home','020 7946 0325')),
    45, 
    '21-Oct-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'L4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 42)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'A', 'AA'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1046',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    46, 
    '21-Feb-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 46)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'B', 'BB'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1047',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    47, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 46)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'C', 'CC'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1048',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    48, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 47)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'D', 'DD'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1049',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    49, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 47)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'E', 'EE'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1050',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    50, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 49)
); 


INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'F', 'FF'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1051',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    51, 
    '21-Feb-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 51)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'G', 'GG'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1052',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    52, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 51)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'H', 'HH'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1053',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    53, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 52)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'I', 'II'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1054',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    54, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 52)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'J', 'JJ'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1055',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    55, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 54)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'A', 'AA'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1056',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    56, 
    '21-Feb-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 56)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'B', 'BB'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1057',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    57, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 56)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'C', 'CC'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1058',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    58, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 57)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'D', 'DD'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1059',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    59, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 57)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'E', 'EE'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1060',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    60, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 59)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'F', 'FF'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1061',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    61, 
    '21-Feb-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 61)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'G', 'GG'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1062',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    62, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 61)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'H', 'HH'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1063',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    63, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 62)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'I', 'II'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1064',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    64, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 62)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'J', 'JJ'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1065',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    65, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 64)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'A', 'AA'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1066',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    66, 
    '21-Feb-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C6'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 66)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'B', 'BB'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1067',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    67, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C6'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 66)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'C', 'CC'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1068',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    68, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C6'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 67)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'D', 'DD'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1069',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    69, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C6'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 67)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'E', 'EE'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1070',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    70, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C6'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 69)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'F', 'FF'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1071',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    71, 
    '21-Feb-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 71)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'G', 'GG'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1072',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    72, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 71)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'H', 'HH'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1073',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    73, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 72)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'I', 'II'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1074',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    74, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 72)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'J', 'JJ'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1075',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    75, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D1'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 74)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'A', 'AA'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1076',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    76, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 76)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'B', 'BB'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1077',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    77, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 76)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'C', 'CC'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1078',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    78, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 77)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'D', 'DD'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1079',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    79, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 77)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'E', 'EE'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1080',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    80, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D2'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 79)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'F', 'FF'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1081',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    81, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 81)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'G', 'GG'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1082',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    82, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 81)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'H', 'HH'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1083',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    83, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 82)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'I', 'II'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1084',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    84, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 82)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'J', 'JJ'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1085',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    85, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D3'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 84)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'A', 'AA'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1086',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    86, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 86)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'B', 'BB'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1087',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    87, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 86)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'C', 'CC'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1088',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    88, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 87)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'D', 'DD'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1089',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    89, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 87)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'E', 'EE'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1090',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    90, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D4'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 89)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'F', 'FF'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1091',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    91, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 91)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'G', 'GG'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1092',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    92, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 91)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'H', 'HH'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1093',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    93, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 92)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'I', 'II'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1094',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    94, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 92)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'J', 'JJ'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1095',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    95, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'D5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 94)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'F', 'FF'),
    address_type(
        'MichelleStreet', 
        'MichelleCity',
        'Post'),
    'N1096',
    phone_type_table(phone_nested('Mobile','07700900427'), phone_nested('Home','029 2018 0897')),
    96, 
    '21-Feb-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Head'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 96)
);    

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'G', 'GG'),
    address_type(
        'JanetStreet', 
        'JanetCity',
        'Post'),
    'N1097',
    phone_type_table(phone_nested('Mobile','07700900946'), phone_nested('Home','029 2018 0570')),
    97, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Manager'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 96)
);   

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'H', 'HH'),
    address_type(
        'TammyStreet', 
        'TammyCity',
        'Post'),
    'N1098',
    phone_type_table(phone_nested('Mobile','07700900196'), phone_nested('Home','029 2018 0062')),
    98, 
    '21-Aug-15', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Project Leader'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 97)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'I', 'II'),
    address_type(
        'KathrynStreet', 
        'KathrynCity',
        'Post'),
    'N1099',
    phone_type_table(phone_nested('Mobile','07700900327'), phone_nested('Home','0191 498 0472')),
    99, 
    '21-Aug-16', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Accountant'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 97)
); 

INSERT INTO employee_table (NAME, ADDRESS, ni_num, phone, emp_id, JOIN_DATE, branch_id, position, supervisor_id) VALUES ( 
    name_type(
        'Ms', 'J', 'JJ'),
    address_type(
        'HeatherStreet', 
        'HeatherCity',
        'Post'),
    'N1100',
    phone_type_table(phone_nested('Mobile','07700900705'), phone_nested('Home','0191 498 0674')),
    100, 
    '21-Aug-17', 
    (SELECT REF(b) FROM branch_table b WHERE b.branch_id = 'C5'), 
    (SELECT ref(j) FROM job_table j WHERE j.job_title = 'Cashier'), 
    (select REF(e) FROM employee_table e WHERE e.emp_id = 99)
); 


/*

****
INSERT INTO CUSTOMER_TABLE
****

*/

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Kevin',
        'Rivera'), 
    address_Type(
        'KevinStreet', 
        'KevinCity', 
        'Post'), 
    'N2001',
    phone_type_table(phone_nested('Mobile','07700 900314'), phone_nested('Home','020 7946 0648')),
    'C1001'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Harold',
        'Jackson'), 
    address_Type(
        'HaroldStreet', 
        'HaroldCity', 
        'Post'), 
    'N2002',
    phone_type_table(phone_nested('Mobile','07700 900272'), phone_nested('Home','020 7946 0889')),
    'C1002'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Arthur',
        'Cook'), 
    address_Type(
        'CookStreet', 
        'CookCity', 
        'Post'), 
    'N2003',
    phone_type_table(phone_nested('Mobile','07800900791'), phone_nested('Mobile','07700 900518'), phone_nested('Home','020 7946 0325')),
    'C1003'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Patrick',
        'Kelly'), 
    address_Type(
        'PatrickStreet', 
        'PatrickCity', 
        'Post'), 
    'N2004',
    phone_type_table(phone_nested('Mobile','07700 900105'), phone_nested('Home','020 7946 0097')),
    'C1004'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Fred',
        'Johnson'), 
    address_Type(
        'FredStreet', 
        'FredCity', 
        'Post'), 
    'N2005',
    phone_type_table(phone_nested('Mobile','07700 900955'), phone_nested('Home','020 7946 0996')), 
    'C1005'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Earl',
        'Gray'), 
    address_Type(
        'EarlStreet', 
        'EarlCity', 
        'Post'), 
    'N2006',
    phone_type_table(phone_nested('Mobile','07700 900719'), phone_nested('Home','020 7946 0571')),
    'C1006'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Frank',
        'Long'), 
    address_Type(
        'FrankStreet', 
        'FrankCity', 
        'Post'), 
    'N2007',
    phone_type_table(phone_nested('Mobile','07600900791'), phone_nested('Mobile','07700 900125'), phone_nested('Home','0141 496 0039')),
    'C1007'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Ralph',
        'James'), 
    address_Type(
        'RalphStreet', 
        'RalphCity', 
        'Post'), 
    'N2008',
    phone_type_table(phone_nested('Mobile','07700 900475'), phone_nested('Home','0141 496 0039')),
    'C1008'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Ernest',
        'Cevic'), 
    address_Type(
        'ErnestStreet', 
        'ErnestCity', 
        'Post'), 
    'N2009',
    phone_type_table(phone_nested('Mobile','07700 900485'), phone_nested('Home','0141 496 0948')),
    'C1009'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Eric',
        'Perez'), 
    address_Type(
        'EricStreet', 
        'EricCity', 
        'Post'), 
    'N2010',
    phone_type_table(phone_nested('Mobile','07700 900758'), phone_nested('Home','0141 496 0000')),
    'C1010'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Victor',
        'Evans'), 
    address_Type(
        'VictorStreet', 
        'VictorCity', 
        'Post'), 
    'N2011',
    phone_type_table(phone_nested('Mobile','07700 900899'), phone_nested('Home','0141 496 0207')),
    'C1011'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Dennis',
        'Henderson'), 
    address_Type(
        'DennisStreet', 
        'DennisCity', 
        'Post'), 
    'N2012',
    phone_type_table(phone_nested('Mobile','07700 900721'), phone_nested('Home','0141 496 0251')), 
    'C1012'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Brandon',
        'Smith'), 
    address_Type(
        'BrandonStreet', 
        'BrandonCity', 
        'Post'), 
    'N2013',
    phone_type_table(phone_nested('Mobile','07500900791'), phone_nested('Mobile','07700 900286'), phone_nested('Home','029 2018 0579')),
    'C1013'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Clarence',
        'Diaz'), 
    address_Type(
        'ClarenceStreet', 
        'ClarenceCity', 
        'Post'), 
    'N2014',
    phone_type_table(phone_nested('Mobile','07700 900384'), phone_nested('Home','029 2018 0579')), 
    'C1014'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Edward',
        'Scott'), 
    address_Type(
        'ScottStreet', 
        'ScottCity', 
        'Post'), 
    'N2015',
    phone_type_table(phone_nested('Mobile','07700 900847'), phone_nested('Home','029 2018 0911')), 
    'C1015'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Kevin',
        'Collins'), 
    address_Type(
        'CollinsStreet', 
        'CollinsCity', 
        'Post'), 
    'N2016',
    phone_type_table(phone_nested('Mobile','07700 900225'), phone_nested('Home','029 2018 0765')), 
    'C1016'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Gary',
        'Sanchez'), 
    address_Type(
        'GaryStreet', 
        'GaryCity', 
        'Post'), 
    'N2017',
    phone_type_table(phone_nested('Mobile','07700 900324'), phone_nested('Home','029 2018 0897')),
    'C1017'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Russell',
        'Wright'), 
    address_Type(
        'WrightStreet', 
        'WrightCity', 
        'Post'), 
    'N2018',
    phone_type_table(phone_nested('Mobile','07700 900591'), phone_nested('Home','29 2018 0570')), 
    'C1018'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Joshua',
        'Rogers'), 
    address_Type(
        'JoshuaStreet', 
        'JoshuaCity', 
        'Post'), 
    'N2019',
    phone_type_table(phone_nested('Mobile','07400900791'), phone_nested('Mobile','07700 900890'), phone_nested('Home','029 2018 0062')),
    'C1019'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Michael',
        'Walker'), 
    address_Type(
        'MichaelStreet', 
        'MichaelCity', 
        'Post'), 
    'N2020',
    phone_type_table(phone_nested('Mobile','07700 900514'), phone_nested('Home','0191 498 0472')), 
    'C1020'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Sandra',
        'Richardson'), 
    address_Type(
        'SandraStreet', 
        'SandraCity', 
        'Post'), 
    'N2021',
    phone_type_table(phone_nested('Mobile','07700 900671'), phone_nested('Home','0191 498 0674')),
    'C1021'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Sarah',
        'King'), 
    address_Type(
        'SarahStreet', 
        'SarahCity', 
        'Post'), 
    'N2022',
    phone_type_table(phone_nested('Mobile','07700 900045'), phone_nested('Home','0191 498 0932')), 
    'C1022'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Doris',
        'Gonzales'), 
    address_Type(
        'DorisStreet', 
        'DorisCity', 
        'Post'), 
    'N2023',
    phone_type_table(phone_nested('Mobile','07700 900861'), phone_nested('Home','0191 498 0754')),
    'C1023'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Bruce',
        'Barnes'), 
    address_Type(
        'BruceStreet', 
        'BruceCity', 
        'Post'), 
    'N2024',
    phone_type_table(phone_nested('Mobile','07700 900024'), phone_nested('Home','0191 498 0265')),
    'C1024'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Katherine',
        'Jones'), 
    address_Type(
        'KatherineStreet', 
        'KatherineCity', 
        'Post'), 
    'N2025',
    phone_type_table(phone_nested('Mobile','07700 900001'), phone_nested('Home','0191 498 0236')),
    'C1025'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Kathryn',
        'Rogers'), 
    address_Type(
        'KathrynStreet', 
        'KathrynCity', 
        'Post'), 
    'N2026',
    phone_type_table(phone_nested('Mobile','07300900791'), phone_nested('Mobile','07700 900694'), phone_nested('Home','0113 496 0953')),
    'C1026'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Karen',
        'Martinez'), 
    address_Type(
        'DorisStreet', 
        'DorisCity', 
        'Post'), 
    'N2027',
    phone_type_table(phone_nested('Mobile','07700 900267'), phone_nested('Home','0113 496 0895')),
    'C1027'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Judy',
        'Taylor'), 
    address_Type(
        'JudyStreet', 
        'JudyCity', 
        'Post'), 
    'N2028',
    phone_type_table(phone_nested('Mobile','07700 900843'), phone_nested('Home','0113 496 0052')),
    'C1028'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Priscilla',
        'Moure'), 
    address_Type(
        'AnnStreet', 
        'AnnCity', 
        'Post'), 
    'N2029',
    phone_type_table(phone_nested('Mobile','07700 900549'), phone_nested('Home','0113 496 0566')),
    'C1029'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Esther', 
        'Moure'), 
    address_Type(
        'EstherStreet', 
        'EstherCity', 
        'Post'), 
    'N2030',
    phone_type_table(phone_nested('Mobile','07700 900571'), phone_nested('Home','0113 496 0070')),
    'C1030'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Christine',
        'Bennett'), 
    address_Type(
        'ChristineStreet', 
        'ChristineCity', 
        'Post'), 
    'N2031',
    phone_type_table(phone_nested('Mobile','07700 900381'), phone_nested('Home','0113 496 0981')),
    'C1031'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Lois',
        'Adams'), 
    address_Type(
        'LoisStreet', 
        'LoisCity', 
        'Post'), 
    'N2032',
    phone_type_table(phone_nested('Mobile','07700 900203'), phone_nested('Home','0116 496 0515')),
    'C1032'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Jessica',
        'Young'), 
    address_Type(
        'JessicaStreet', 
        'JessicaCity', 
        'Post'), 
    'N2033',
    phone_type_table(phone_nested('Mobile','07700 900791'), phone_nested('Mobile','07700 900219'), phone_nested('Home','0116 496 0549')),
    'C1033'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Amanda',
        'Parker'), 
    address_Type(
        'AmandaStreet', 
        'AmandaCity', 
        'Post'), 
    'N2034',
    phone_type_table(phone_nested('Mobile','07700 900525'), phone_nested('Home','0116 496 0738')),
    'C1034'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Angela',
        'Jackson'), 
    address_Type(
        'AngelaStreet', 
        'AngelaCity', 
        'Post'), 
    'N2035',
    phone_type_table(phone_nested('Mobile','07700 900867'), phone_nested('Home','0116 496 0805')),
    'C1035'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Denise',
        'Edwards'), 
    address_Type(
        'ChristineStreet', 
        'ChristineCity', 
        'Post'), 
    'N2036',
    phone_type_table(phone_nested('Mobile','07700 900003'), phone_nested('Home','0116 496 0841')), 
    'C1036'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Helen',
        'Russel'), 
    address_Type(
        'HelenWStreet', 
        'HelenWCity', 
        'Post'), 
    'N2037',
    phone_type_table(phone_nested('Mobile','07700 900640'), phone_nested('Home','0116 496 0160')), 
    'C1037'
); 

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Laura',
        'Young'), 
    address_Type(
        'LauraStreet', 
        'LauraCity', 
        'Post'), 
    'N2038',
    phone_type_table(phone_nested('Mobile','07200900791'), phone_nested('Mobile','07700 900041'), phone_nested('Home','0161 496 0590')),
    'C1038'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Marie',
        'Robinson'), 
    address_Type(
        'MarieStreet', 
        'MarieCity', 
        'Post'), 
    'N2039',
    phone_type_table(phone_nested('Mobile','07700 900731'), phone_nested('Home','0161 496 0190')),
    'C1039'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Ms', 
        'Louise',
        'Williams'), 
    address_Type(
        'LouiseStreet', 
        'LouiseCity', 
        'Post'), 
    'N2040',
    phone_type_table(phone_nested('Mobile','07700 900599'), phone_nested('Home','0161 496 0495')), 
    'C1040'
);

INSERT INTO customer_table (name, address, ni_num, phone, cust_id) VALUES ( 
    name_Type(
        'Mr', 
        'Jonathan',
        'Saxo'), 
    address_Type(
        'JonathanStreet', 
        'JonathanCity', 
        'Post'), 
    'N2041',
    phone_type_table(phone_nested('Mobile','07100900791'), phone_nested('Mobile','07700 900833'), phone_nested('Home','0161 496 0667')),
    'C1041'
);


/*

****
INSERT INTO CUSTOMER_ACCOUNT
****

*/

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1001'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '45645654')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1002'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '64758904')
); 

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1002'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '85967485')
); 

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1003'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '34528754')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1004'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '76895465')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1005'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '6057342')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1006'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '92157579')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1006'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '74853652')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1007'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '36428802')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1008'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '30360522')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1009'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '45947960')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1010'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '61759251')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1011'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '47935252')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1012'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '91908038')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1013'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '48566965')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1014'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '26502506')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1015'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '3621280')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1015'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '85963258')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1016'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '32116769')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1017'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '99481068')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1018'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '55163952')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1019'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '58489233')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1020'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '82516698')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1020'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '14786952')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1021'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '58411184')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1022'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '69732823')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1023'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '80129532')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1024'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '04834745')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1024'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '85479652')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1025'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '16095573')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1026'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '35953164')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1027'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '52965833')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1028'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '40130365')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1029'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '47016078')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1030'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '31866334')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1031'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '83672918')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1032'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '12667691')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1033'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '5545073')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1034'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '64793745')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1035'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '88736868')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1036'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '3608694')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1037'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '32722516')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1038'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '65004171')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1039'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '95646311')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1039'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '14785963')
);

INSERT INTO customer_account (cust_id, account_number) VALUES (
    (SELECT REF(c) FROM customer_table c WHERE cust_id = 'C1040'),
    (SELECT REF(a) FROM account_table a WHERE account_number = '59641812')
);

SHOW ERROR;
