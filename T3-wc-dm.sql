--****PLEASE ENTER YOUR DETAILS BELOW****
--T3-wc-dm.sql

--Student ID: 31861148
--Student Name: Ng Chen Ting
--Unit Code: FIT2094
--Applied Class No: 1

/* Comments for your marker:




*/

--3(a)
DROP SEQUENCE passenger_seq;
DROP SEQUENCE manifest_seq;

CREATE SEQUENCE passenger_seq START WITH 100 INCREMENT BY 1;
CREATE SEQUENCE manifest_seq START WITH 100 INCREMENT BY 1;

--3(b)

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    passenger_seq.NEXTVAL,
    'Dominik',
    'Davies',
    TO_DATE('06/05/1980','dd/MM/yyyy'),
    'M',
    '0493336312',
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
    passenger_seq.NEXTVAL,
    'Henrietta',
    'Davies',
    TO_DATE('06/12/2017','dd/MM/yyyy'),
    'F',
    null,
    (
        SELECT 
            passenger_id
        FROM 
            passenger
        WHERE
            upper(passenger_fname) = upper('Dominik')
            AND
            upper(passenger_lname) = upper('Davies')
            AND 
            passenger_contact = '0493336312'
    )
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
    passenger_seq.NEXTVAL,
    'Poppy',
    'Davies',
    TO_DATE('26/05/2019','dd/MM/yyyy'),
    'F',
    null,
    (
        SELECT 
            passenger_id
        FROM 
            passenger
        WHERE
            upper(passenger_fname) = upper('Dominik')
            AND
            upper(passenger_lname) = upper('Davies')
            AND 
            passenger_contact = '0493336312'
    )
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    manifest_seq.NEXTVAL,
    (
        SELECT 
            passenger_id
        FROM 
            passenger
        WHERE
            upper(passenger_fname) = upper('Dominik')
            AND
            upper(passenger_lname) = upper('Davies')
            AND 
            passenger_contact = '0493336312'
    ),
    (
        SELECT
            cruise_id
        FROM
            cruise
        WHERE
            upper(cruise_name) = upper('Melbourne to Auckland')
            AND
            cruise_departure_datetime = to_date('23/10/2022 10:00','dd/MM/yyyy hh24:mi')        
    ),
    null,
    103,
    210
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    manifest_seq.NEXTVAL,
    (
        SELECT 
            passenger_id
        FROM 
            passenger
        WHERE
            upper(passenger_fname) = upper('Henrietta')
            AND
            upper(passenger_lname) = upper('Davies')
            AND 
            guardian_id = ( 
                SELECT passenger_id
                FROM passenger
                WHERE
                    upper(passenger_fname) = upper('Dominik')
                    AND
                    upper(passenger_lname) = upper('Davies')
                    AND 
                    passenger_contact = '0493336312')
                
    ),
    (
        SELECT
            cruise_id
        FROM
            cruise
        WHERE
            upper(cruise_name) = upper('Melbourne to Auckland')
            AND
            cruise_departure_datetime = to_date('23/10/2022 10:00','dd/MM/yyyy hh24:mi')          
    ),
    null,
    103,
    210
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    manifest_seq.NEXTVAL,
    (
        SELECT 
            passenger_id
        FROM 
            passenger
        WHERE
            upper(passenger_fname) = upper('Poppy')
            AND
            upper(passenger_lname) = upper('Davies')
            AND 
            guardian_id = ( 
                SELECT passenger_id
                FROM passenger
                WHERE
                    upper(passenger_fname) = upper('Dominik')
                    AND
                    upper(passenger_lname) = upper('Davies')
                    AND 
                    passenger_contact = '0493336312')
    ),
    (
        SELECT
            cruise_id
        FROM
            cruise
        WHERE
            upper(cruise_name) = upper('Melbourne to Auckland')
            AND
            cruise_departure_datetime = to_date('23/10/2022 10:00','dd/MM/yyyy hh24:mi') 
    ),
    null,
    103,
    210
);

commit;

--3(c)
    



DELETE FROM manifest
WHERE 
    passenger_id = (
                SELECT 
                    passenger_id
                FROM 
                    passenger
                WHERE
                    upper(passenger_fname) = upper('Poppy')
                    AND upper(passenger_lname) = upper('Davies')
                    AND guardian_id = ( 
                        SELECT passenger_id
                        FROM passenger
                        WHERE
                            upper(passenger_fname) = upper('Dominik')
                            AND
                            upper(passenger_lname) = upper('Davies')
                            AND 
                            passenger_contact = '0493336312')
                )
    AND
    cruise_id = (
            SELECT 
                    cruise_id
                FROM 
                    cruise
                WHERE
                    upper(cruise_name) = upper('Melbourne to Auckland')
                    AND
                    cruise_departure_datetime = to_date('23/10/2022 10:00','dd/MM/yyyy hh24:mi')
            )
;



UPDATE manifest
SET
    cabin_no = 113
WHERE 
    passenger_id = (
        SELECT passenger_id 
        FROM passenger
        WHERE
            upper(passenger_fname) = upper('Dominik') AND
            upper(passenger_lname) = upper('Davies') AND
            passenger_contact = '0493336312'
            
        )
;

UPDATE manifest
SET
    cabin_no = 113
WHERE 
    passenger_id = (
        SELECT passenger_id 
        FROM passenger
        WHERE
            upper(passenger_fname) = upper('Henrietta') AND
            upper(passenger_lname) = upper('Davies') AND
            guardian_id = ( 
                        SELECT passenger_id
                        FROM passenger
                        WHERE
                            upper(passenger_fname) = upper('Dominik')
                            AND
                            upper(passenger_lname) = upper('Davies')
                            AND 
                            passenger_contact = '0493336312')
            
            
        );
   
commit; 

--3(d)

DELETE FROM manifest
WHERE 
    passenger_id = (
                SELECT 
                    passenger_id
                FROM 
                    passenger
                WHERE
                    upper(passenger_fname) = upper('Dominik')
                    AND upper(passenger_lname) = upper('Davies')
                    AND passenger_contact = '0493336312'
            
                )
    AND
    cruise_id = (
            SELECT 
                    cruise_id
                FROM 
                    cruise
                WHERE
                    upper(cruise_name) = upper('Melbourne to Auckland')
                    AND
                    cruise_departure_datetime = to_date('23/10/2022 10:00','dd/MM/yyyy hh24:mi')
            )
;

DELETE FROM manifest
WHERE 
    passenger_id = (
                SELECT 
                    passenger_id
                FROM 
                    passenger
                WHERE
                    upper(passenger_fname) = upper('Henrietta')
                    AND upper(passenger_lname) = upper('Davies')
                    AND guardian_id = ( 
                        SELECT passenger_id
                        FROM passenger
                        WHERE
                            upper(passenger_fname) = upper('Dominik')
                            AND
                            upper(passenger_lname) = upper('Davies')
                            AND 
                            passenger_contact = '0493336312')
                )
    AND
    cruise_id = (
            SELECT 
                    cruise_id
                FROM 
                    cruise
                WHERE
                    upper(cruise_name) = upper('Melbourne to Auckland')
                    AND
                    cruise_departure_datetime = to_date('23/10/2022 10:00','dd/MM/yyyy hh24:mi')
            )
;
commit;
