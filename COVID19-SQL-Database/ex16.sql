SELECT
    countriesAndTerritories as country,
    CovidStats.dateRep as date,
    cases as "number of cases",
    deaths as "number of deaths"
FROM CovidStats
JOIN DateInfo on CovidStats.dateRep = DateInfo.dateRep
ORDER BY DateInfo.year, DateInfo.month, DateInfo.day;