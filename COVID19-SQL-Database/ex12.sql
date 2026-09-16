INSERT OR IGNORE INTO DateInfo(dateRep, day, month, year)
SELECT DISTINCT dateRep, day, month, year FROM dataset;

INSERT OR IGNORE INTO Country(countriesAndTerritories, continentExp)
SELECT DISTINCT countriesAndTerritories, continentExp FROM dataset;

INSERT OR IGNORE INTO CountryCodes(countriesAndTerritories, geoId, countryterritoryCode, popData2020)
SELECT DISTINCT countriesAndTerritories, geoId, countryterritoryCode, popData2020 FROM dataset;

INSERT OR IGNORE INTO CovidStats(countriesAndTerritories, dateRep, cases, deaths)
SELECT DISTINCT countriesAndTerritories, dateRep, cases, deaths FROM dataset;
