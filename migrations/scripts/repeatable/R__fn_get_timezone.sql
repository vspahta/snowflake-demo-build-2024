
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