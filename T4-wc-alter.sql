--****PLEASE ENTER YOUR DETAILS BELOW****
--T4-wc-alter.sql

--Student ID: 31861148
--Student Name: Ng Chen Ting
--Unit Code: FIT2094
--Applied Class No: 1

/* Comments for your marker:

Task 4a creates the cruisenopass temporarily only to insert the values, 
therefore dropped after.

Task 4c creates the guardian_id temporarily only to insert the values, 
therefore dropped after.

*/

--4(a)
DROP TABLE cruisenopass CASCADE CONSTRAINTS PURGE;

CREATE TABLE cruisenopass (
		cruise_id       NUMBER(6)       NOT NULL,
		no_ofpassengers NUMBER(4)       NOT NULL);
        
COMMENT ON COLUMN cruisenopass.cruise_id IS
    'Cruise identifier - used only for a single cruise';

COMMENT ON COLUMN cruisenopass.no_ofpassengers IS
    'Total number of passengers for the cruise';
    
ALTER TABLE cruisenopass ADD CONSTRAINT cruisenopass_pk PRIMARY KEY (cruise_id);

INSERT INTO cruisenopass
	(
		SELECT cruise_id, count(passenger_id)
		FROM manifest
        GROUP BY cruise_id
	);

alter table cruise add (
    no_ofpassengers NUMBER(4) DEFAULT 0 NOT NULL
);

COMMENT ON COLUMN cruise.no_ofpassengers IS
    'Number of passengers booked for the cruise';

UPDATE cruise c
SET no_ofpassengers = (SELECT no_ofpassengers FROM cruisenopass n WHERE c.cruise_id = n.cruise_id);

DROP TABLE cruisenopass CASCADE CONSTRAINTS PURGE;

commit;


--4(b)

DROP TABLE maintenance;

CREATE TABLE maintenance 
	(ship_code                   NUMBER(4) NOT NULL,
    maint_startdate              DATE      NOT NULL,
	maint_expectedenddate        DATE      NOT NULL,
	maint_type                   VARCHAR2(3) NOT NULL
);


COMMENT ON COLUMN maintenance.ship_code IS
		'Ship identifier';        

COMMENT ON COLUMN maintenance.maint_startdate IS
		'The date the ship starts the maintenance';     

COMMENT ON COLUMN maintenance.maint_expectedenddate IS
		'The date the ship maintenancee is expected to end';  

COMMENT ON COLUMN maintenance.maint_type IS
		'Type of maintenance the ship is having (PS - Preventive or Scheduled Maintenance, CB - Corrective or Breakdown Maintenance, CM - Condition Maintenance)';  

ALTER TABLE maintenance 
	ADD CONSTRAINT check_maint_type CHECK ( maint_type IN ( 'PS','CB','CM'));


ALTER TABLE maintenance ADD CONSTRAINT maintenance_pk PRIMARY KEY (ship_code, maint_startdate);

ALTER TABLE maintenance 
	ADD CONSTRAINT ship_maintenance_fk FOREIGN KEY ( ship_code )
		REFERENCES ship ( ship_code );
        
commit;

--4(c)

ALTER TABLE manifest 
ADD guardian_id NUMBER(6);

COMMENT ON COLUMN manifest.guardian_id IS
		'guardian identifier for each passenger, null if no ';  

UPDATE manifest m
SET guardian_id = 
    (SELECT guardian_id 
    FROM passenger p 
    WHERE m.passenger_id = p.passenger_id);

DROP TABLE guardian_history;

CREATE TABLE guardian_history (
	guardian_id     NUMBER(6),
	minor_id        NUMBER(6),
	cruise_id       NUMBER(6)
);

COMMENT ON COLUMN guardian_history.guardian_id IS
	'Passenger id of the guardian';

COMMENT ON COLUMN guardian_history.minor_id IS
	'Passenger id of the minor for that guardian';

COMMENT ON COLUMN guardian_history.cruise_id IS
	'cruise identification number';


ALTER TABLE guardian_history ADD CONSTRAINT guardianhistory_pk PRIMARY KEY (minor_id, cruise_id);


ALTER TABLE guardian_history
	ADD CONSTRAINT passengerm_guardianhistory_fk FOREIGN KEY ( minor_id )
		REFERENCES passenger ( passenger_id );

ALTER TABLE guardian_history
	ADD CONSTRAINT cruise_guardianhistory_fk FOREIGN KEY ( cruise_id )
		REFERENCES cruise ( cruise_id );

INSERT INTO guardian_history g
(SELECT guardian_id, passenger_id, cruise_id
FROM manifest m
WHERE guardian_id IS NOT NULL);

ALTER TABLE manifest DROP COLUMN guardian_id;

commit;
