-- YouTube Channel: https://www.youtube.com/@DatabasesAndSQLForBeginners
-- Script for YouTube Video "Introduction To And SQLiteStudio": https://youtu.be/uRybPy3c2To
-- Used with SQLiteStudio Example
-- Creates Customer and PartsOrder tables using AUTOINCREMENT

CREATE TABLE Customer (
    Id             INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerNumber INTEGER,
    FirstName      TEXT,
    LastName       TEXT,
    Address        TEXT,
    City           TEXT,
    State          TEXT,
    PostalCode     TEXT,
    Country        TEXT
);

CREATE TABLE PartsOrder (
    Id           INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerId   INTEGER REFERENCES Customer (Id),
    OrderDate    TEXT,
    ShippedDate TEXT,
    Quantity     INTEGER,
    ItemNumber   INTEGER,
    ItemName     TEXT,
    Cost         REAL
);