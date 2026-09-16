SELECT CountryCodes.countriesAndTerritories AS country,
    ROUND(SUM(cases) * 100.0/CountryCodes.popData2020,1) AS "% cases of population",
    ROUND(SUM(deaths) * 100.0/CountryCodes.popData2020,1) AS "% cases of population"
FROM
    CovidStats
JOIN
    CountryCodes ON CovidStats.countriesAndTerritories = CountryCodes.countriesAndTerritories
GROUP BY
    CovidStats.countriesAndTerritories;