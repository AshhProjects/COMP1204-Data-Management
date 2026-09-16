SELECT
    countriesAndTerritories AS "country name",
    Round((SUM(deaths)/SUM(cases)) * 100,1) AS "% deaths of country cases"
FROM
    CovidStats
GROUP BY
    countriesAndTerritories
ORDER BY
    "% deaths of country cases" DESC
LIMIT 10;