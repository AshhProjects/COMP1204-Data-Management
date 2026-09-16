SELECT CovidStats.dateRep as "date reported", cases as "number of cases"
FROM CovidStats
JOIN DateInfo on CovidStats.dateRep = DateInfo.dateRep
WHERE countriesAndTerritories = 'United_Kingdom'
ORDER BY DateInfo.year, DateInfo.month, DateInfo.day;