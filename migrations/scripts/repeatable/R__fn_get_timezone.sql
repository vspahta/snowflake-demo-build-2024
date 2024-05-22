
USE DATABASE DEMO_DB;

CREATE OR REPLACE FUNCTION DEMO.GET_CURRENT_TIMEZONE()
RETURNS VARCHAR
LANGUAGE JAVASCRIPT
AS 
$$
  const timezone = Intl.DateTimeFormat().resolvedOptions().timeZone;
  return timezone;
$$
;

CREATE OR REPLACE FUNCTION DEMO.GET_DATE(business_date timestamp)
RETURNS DATE
LANGUAGE SQL
AS
$$
    TO_DATE(SUBSTR(TO_CHAR(business_date),1,10))
$$;