with CTE as (

select
TO_TIMESTAMP(STARTED_AT), STARTED_AT 
from 
{{ source('demo', 'BIKE') }}



)


SELECT 
*
FROM CTE