SELECT
    CovidStats.dateRep as date,
    SUM(cases) OVER (ORDER BY year, month, day) AS "cumulative UK deaths",
    SUM(deaths) OVER (ORDER BY year, month, day) AS "cumulative UK cases"
FROM CovidStats
JOIN DateInfo ON CovidStats.dateRep = DateInfo.dateRep
WHERE countriesAndTerritories = 'United_Kingdom'
ORDER BY year,month,day;