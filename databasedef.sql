DROP SCHEMA IF EXISTS tmp CASCADE;
CREATE SCHEMA tmp;
SET search_path=tmp;

DROP DOMAIN IF EXISTS gender CASCADE ;
CREATE DOMAIN gender CHAR(6)
CHECK (value IN ( 'Female' , 'Male' ) );

DROP TABLE IF EXISTS SURVEY;

CREATE TABLE IF NOT EXISTS SURVEY(
  id serial PRIMARY KEY,
  participant_id VARCHAR(50) NOT NULL,
  gender gender,
  age INT NOT NULL CHECK (age>=0 AND age <=0),
  photoString VARCHAR (200) NOT NULL,
  attr_1 INT NOT NULL CHECK (attr_1 >0 AND attr_1 <=5),
  comp_1 INT NOT NULL CHECK (comp_1 >0 AND comp_1 <=5),
  soci_1 INT NOT NULL CHECK (soci_1 >0 AND soci_1 <=5),
  trus_1 INT NOT NULL CHECK (trus_1 >0 AND trus_1 <=5),
  attr_2 INT NOT NULL CHECK (attr_2 >0 AND attr_2 <=5),
  comp_2 INT NOT NULL CHECK (comp_2 >0 AND comp_2 <=5),
  soci_2 INT NOT NULL CHECK (soci_2 >0 AND soci_2 <=5),
  trus_2 INT NOT NULL CHECK (trus_2 >0 AND trus_2 <=5),
  attr_3 INT NOT NULL CHECK (attr_3 >0 AND attr_3 <=5),
  comp_3 INT NOT NULL CHECK (comp_3 >0 AND comp_3 <=5),
  soci_3 INT NOT NULL CHECK (soci_3 >0 AND soci_3 <=5),
  trus_3 INT NOT NULL CHECK (trus_3 >0 AND trus_3 <=5),
  timestamp timestamp default current_timestamp
);n

SELECT * FROM tmp.SURVEY;

