--****PLEASE ENTER YOUR DETAILS BELOW****
--T2-wc-insert.sql

--Student ID: 31861148
--Student Name: Ng Chen Ting
--Unit Code: FIT2094
--Applied Class No: 1

/* Comments for your marker:




*/

-- Task 2 Load the PASSENGER and MANIFEST tables with your own
-- test data following the data requirements expressed in the brief

-- =======================================
-- PASSENGER
-- =======================================

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    1,
    'Byun',
    'Baekhyun',
    TO_DATE('06/05/1992','dd/MM/yyyy'),
    'M',
    '6012347924',
    null
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    2,
    'Kim',
    'Taehyung',
    TO_DATE('30/12/2019','dd/MM/yyyy'),
    'M',
    '6013467283',
    1
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    3,
    'Choi',
    'Yeonjun',
    TO_DATE('13/09/1999','dd/MM/yyyy'),
    'M',
    '6056243768',
    null
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    4,
    'Park',
    'Jimin',
    TO_DATE('13/10/1995','dd/MM/yyyy'),
    'M',
    '6030928442',
    null
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    5,
    'Yoon',
    'Jeonghan',
    TO_DATE('04/10/1995','dd/MM/yyyy'),
    'M',
    '6027486345',
    null
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    6,
    'Song',
    'Jia',
    TO_DATE('30/04/1997','dd/MM/yyyy'),
    'F',
    '6093468572',
    null
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    7,
    'Kwon',
    'Soonyoung',
    TO_DATE('15/06/1982','dd/MM/yyyy'),
    'M',
    '6054398783',
    null
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    8,
    'Han',
    'Sohee',
    TO_DATE('18/11/1994','dd/MM/yyyy'),
    'F',
    '6076545672',
    null
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    9,
    'Alexa',
    'Demie',
    TO_DATE('11/12/1990','dd/MM/yyyy'),
    'F',
    '6047856243',
    null
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    10,
    'Kang',
    'Taehyun',
    TO_DATE('05/02/2009','dd/MM/yyyy'),
    'X',
    '6023855734',
    6
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    11,
    'Yim',
    'Siwan',
    TO_DATE('01/12/1988','dd/MM/yyyy'),
    'X',
    '6097853479',
    null
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    12,
    'Kim',
    'Mingyu',
    TO_DATE('06/04/2017','dd/MM/yyyy'),
    'M',
    '6023458681',
    11
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    13,
    'Lee',
    'Heeseung',
    TO_DATE('15/10/2020','dd/MM/yyyy'),
    'X',
    null,
    9
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    14,
    null,
    'Wooshik',
    TO_DATE('01/01/2022','dd/MM/yyyy'),
    'X',
    null,
    9
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    15,
    'Jung',
    'Hoseok',
    TO_DATE('18/02/1994','dd/MM/yyyy'),
    'M',
    '6043786253',
    null
);
-- =======================================
-- MANIFEST
-- =======================================

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    70,
    8,
    1,
    TO_DATE('02/04/2022 05:00','dd/MM/yyyy hh24:mi'),
    101,
    1001
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    71,
    15,
    1,
    TO_DATE('02/04/2022 05:55','dd/MM/yyyy hh24:mi'),
    101,
    1002
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    72,
    9,
    1,
    TO_DATE('02/04/2022 06:00','dd/MM/yyyy hh24:mi'),
    101,
    1003
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    73,
    13,
    1,
    TO_DATE('02/04/2022 06:05','dd/MM/yyyy hh24:mi'),
    101,
    1003
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    74,
    14,
    1,
    TO_DATE('02/04/2022 06:10','dd/MM/yyyy hh24:mi'),
    101,
    1003
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    75,
    1,
    2,
    TO_DATE('16/04/2022 08:00','dd/MM/yyyy hh24:mi'),
    102,
    4004
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    76,
    2,
    2,
    TO_DATE('16/04/2022 08:05','dd/MM/yyyy hh24:mi'),
    102,
    4004
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    77,
    3,
    3,
    TO_DATE('16/04/2022 07:00','dd/MM/yyyy hh24:mi'),
    103,
    110
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    78,
    7,
    3,
    TO_DATE('16/04/2022 07:20','dd/MM/yyyy hh24:mi'),
    103,
    111
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    79,
    4,
    3,
    null,
    103,
    112
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    80,
    6,
    3,
    TO_DATE('16/04/2022 08:00','dd/MM/yyyy hh24:mi'),
    103,
    113
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    81,
    10,
    3,
    TO_DATE('16/04/2022 08:05','dd/MM/yyyy hh24:mi'),
    103,
    113
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    82,
    8,
    4,
    TO_DATE('07/05/2022 10:00','dd/MM/yyyy hh24:mi'),
    101,
    1011
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    83,
    15,
    4,
    null,
    101,
    1012
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    84,
    1,
    4,
    TO_DATE('07/05/2022 11:00','dd/MM/yyyy hh24:mi'),
    101,
    2023
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    85,
    2,
    4,
    TO_DATE('07/05/2022 11:05','dd/MM/yyyy hh24:mi'),
    101,
    2023
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    86,
    4,
    4,
    TO_DATE('07/05/2022 13:00','dd/MM/yyyy hh24:mi'),
    101,
    2003
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    87,
    6,
    5,
    TO_DATE('08/05/2022 9:05','dd/MM/yyyy hh24:mi'),
    102,
    2003
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    88,
    10,
    5,
    TO_DATE('08/05/2022 9:10','dd/MM/yyyy hh24:mi'),
    102,
    2003
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    89,
    11,
    6,
    TO_DATE('18/09/2022 6:00','dd/MM/yyyy hh24:mi'),
    101,
    2003
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    90,
    12,
    6,
    TO_DATE('18/09/2022 6:05','dd/MM/yyyy hh24:mi'),
    101,
    2003
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    91,
    9,
    6,
    TO_DATE('18/09/2022 7:00','dd/MM/yyyy hh24:mi'),
    101,
    1001
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    92,
    13,
    6,
    TO_DATE('18/09/2022 8:00','dd/MM/yyyy hh24:mi'),
    101,
    1001
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    93,
    14,
    6,
    TO_DATE('18/09/2022 8:05','dd/MM/yyyy hh24:mi'),
    101,
    1001
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    94,
    3,
    7,
    null,
    103,
    114
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    95,
    8,
    7,
    null,
    103,
    211
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    96,
    1,
    8,
    null,
    105,
    9014
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    97,
    2,
    8,
    null,
    105,
    9014
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    98,
    15,
    8,
    null,
    105,
    10102
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    99,
    8,
    8,
    null,
    105,
    10103
);
