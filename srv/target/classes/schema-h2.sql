
DROP VIEW IF EXISTS db_station_service_CarService_DraftAdministrativeData;
DROP VIEW IF EXISTS db_station_service_CarService_Customers;
DROP VIEW IF EXISTS db_station_service_CarService_Cars;
DROP TABLE IF EXISTS db_station_service_CarService_Customers_drafts;
DROP TABLE IF EXISTS db_station_service_CarService_Cars_drafts;
DROP TABLE IF EXISTS DRAFT_DraftAdministrativeData;
DROP TABLE IF EXISTS cds_outbox_Messages;
DROP TABLE IF EXISTS db_station_Customers;
DROP TABLE IF EXISTS db_station_Cars;

CREATE TABLE db_station_Cars (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7),
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP(7),
  modifiedBy NVARCHAR(255),
  licensePlate NVARCHAR(20),
  brand NVARCHAR(40),
  model NVARCHAR(40),
  "YEAR" INTEGER,
  customer_ID NVARCHAR(36),
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_Customers (
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(30),
  surname NVARCHAR(30),
  email NVARCHAR(30),
  PRIMARY KEY(ID)
);

CREATE TABLE cds_outbox_Messages (
  ID NVARCHAR(36) NOT NULL,
  timestamp TIMESTAMP(7),
  target NVARCHAR(255),
  msg NCLOB,
  attempts INTEGER DEFAULT 0,
  "PARTITION" INTEGER DEFAULT 0,
  lastError NCLOB,
  lastAttemptTimestamp TIMESTAMP(7),
  status NVARCHAR(23),
  task NVARCHAR(255),
  appid NVARCHAR(255),
  PRIMARY KEY(ID)
);

CREATE TABLE DRAFT_DraftAdministrativeData (
  DraftUUID NVARCHAR(36) NOT NULL,
  CreationDateTime TIMESTAMP(7),
  CreatedByUser NVARCHAR(256),
  CreatedByUserDescription NVARCHAR(256),
  DraftIsCreatedByMe BOOLEAN,
  LastChangeDateTime TIMESTAMP(7),
  LastChangedByUser NVARCHAR(256),
  LastChangedByUserDescription NVARCHAR(256),
  InProcessByUser NVARCHAR(256),
  InProcessByUserDescription NVARCHAR(256),
  DraftIsProcessedByMe BOOLEAN,
  DraftMessages NCLOB,
  PRIMARY KEY(DraftUUID)
);

CREATE TABLE db_station_service_CarService_Cars_drafts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7) NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP(7) NULL,
  modifiedBy NVARCHAR(255) NULL,
  licensePlate NVARCHAR(20) NULL,
  brand NVARCHAR(40) NULL,
  model NVARCHAR(40) NULL,
  "YEAR" INTEGER NULL,
  customer_ID NVARCHAR(36) NULL,
  customerFullName NVARCHAR(80) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_service_CarService_Customers_drafts (
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(30) NULL,
  surname NVARCHAR(30) NULL,
  email NVARCHAR(30) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE VIEW db_station_service_CarService_Cars AS SELECT
  Cars_0.ID,
  Cars_0.createdAt,
  Cars_0.createdBy,
  Cars_0.modifiedAt,
  Cars_0.modifiedBy,
  Cars_0.licensePlate,
  Cars_0.brand,
  Cars_0.model,
  Cars_0."YEAR",
  Cars_0.customer_ID,
  customer_1.name || ' ' || customer_1.surname AS customerFullName
FROM (db_station_Cars AS Cars_0 LEFT JOIN db_station_Customers AS customer_1 ON Cars_0.customer_ID = customer_1.ID);

CREATE VIEW db_station_service_CarService_Customers AS SELECT
  Customers_0.ID,
  Customers_0.name,
  Customers_0.surname,
  Customers_0.email
FROM db_station_Customers AS Customers_0;

CREATE VIEW db_station_service_CarService_DraftAdministrativeData AS SELECT
  DraftAdministrativeData.DraftUUID,
  DraftAdministrativeData.CreationDateTime,
  DraftAdministrativeData.CreatedByUser,
  DraftAdministrativeData.CreatedByUserDescription,
  DraftAdministrativeData.DraftIsCreatedByMe,
  DraftAdministrativeData.LastChangeDateTime,
  DraftAdministrativeData.LastChangedByUser,
  DraftAdministrativeData.LastChangedByUserDescription,
  DraftAdministrativeData.InProcessByUser,
  DraftAdministrativeData.InProcessByUserDescription,
  DraftAdministrativeData.DraftIsProcessedByMe,
  DraftAdministrativeData.DraftMessages
FROM DRAFT_DraftAdministrativeData AS DraftAdministrativeData;
