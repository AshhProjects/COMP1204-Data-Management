CREATE TABLE DateInfo(
    dateRep TEXT PRIMARY KEY,
    day INTEGER,
    month INTEGER,
    year INTEGER
);

CREATE TABLE Country(
    countriesAndTerritories TEXT PRIMARY KEY,
    continentExp TEXT
);

CREATE INDEX idx_country ON Country (countriesAndTerritories);

CREATE TABLE CountryCodes(
    countriesAndTerritories TEXT PRIMARY KEY,
    geoId TEXT,
    countryterritoryCode TEXT,
    popData2020 INTEGER,
    FOREIGN KEY (countriesAndTerritories) REFERENCES Country(countriesAndTerritories)
);

CREATE INDEX idx_country_codes ON CountryCodes (countriesAndTerritories);

CREATE TABLE CovidStats(
    countriesAndTerritories TEXT,
    dateRep TEXT,
    cases INTEGER,
    deaths INTEGER,
    PRIMARY KEY (countriesAndTerritories, dateRep),
    FOREIGN KEY (countriesAndTerritories) REFERENCES Country(countriesAndTerritories),
    FOREIGN KEY (dateRep) REFERENCES DateInfo(dateRep)
);

CREATE INDEX idx_covid_stats ON CovidStats (countriesAndTerritories, dateRep);
