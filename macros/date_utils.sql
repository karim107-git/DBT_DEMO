{% macro funSeason(x) %}
CASE
    WHEN ((MONTH(TO_TIMESTAMP({{x}})) = 12 AND  DAY(TO_TIMESTAMP({{x}}))>=  21) 
    OR (MONTH(TO_TIMESTAMP({{x}})) IN (1,2)) 
    OR (MONTH(TO_TIMESTAMP({{x}})) = 3 AND  DAY(TO_TIMESTAMP({{x}})) <=  20))  THEN 'WINTER'

    WHEN ((MONTH(TO_TIMESTAMP({{x}})) = 3 AND  DAY(TO_TIMESTAMP({{x}}))>=  21) 
    OR (MONTH(TO_TIMESTAMP({{x}})) IN (4,5)) 
    OR (MONTH(TO_TIMESTAMP({{x}})) = 6 AND  DAY(TO_TIMESTAMP({{x}})) <=  20))  THEN 'SPRING'

    WHEN ((MONTH(TO_TIMESTAMP({{x}})) = 6 AND  DAY(TO_TIMESTAMP({{x}}))>=  21) 
    OR (MONTH(TO_TIMESTAMP({{x}})) IN (7,8)) 
    OR (MONTH(TO_TIMESTAMP({{x}})) = 9 AND  DAY(TO_TIMESTAMP({{x}})) <=  20))  THEN 'SUMMER'

    ELSE 'FALL' 
    END
{% endmacro %}

{% macro day_type(y) %}

Case 
WHEN DAYNAME(TO_TIMESTAMP({{y}})) in ('Sat','Sun') then 'WEEKEND'
else 'BUSINESSDAY'
end

{% endmacro %}