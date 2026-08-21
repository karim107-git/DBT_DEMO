with cte as (

SELECT
t.*,
w.*
FROM {{ ref('trip_fact') }} t
left join {{ ref('daily_weather') }} w on t.TRIP_DATE = w.DAILY_WEATHER_DATE

)

SELECT
*
FROM cte