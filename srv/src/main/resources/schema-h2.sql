
DROP VIEW IF EXISTS db_station_service_CarService_DraftAdministrativeData;
DROP VIEW IF EXISTS db_station_service_CarService_Services;
DROP VIEW IF EXISTS db_station_service_CarService_RepairOrderServices;
DROP VIEW IF EXISTS db_station_service_CarService_RepairOrders;
DROP VIEW IF EXISTS db_station_service_CarService_RepairOrderItems;
DROP VIEW IF EXISTS db_station_service_CarService_Parts;
DROP VIEW IF EXISTS db_station_service_CarService_Customers;
DROP VIEW IF EXISTS db_station_service_CarService_Cars;
DROP TABLE IF EXISTS db_station_service_CarService_Services_drafts;
DROP TABLE IF EXISTS db_station_service_CarService_RepairOrderServices_drafts;
DROP TABLE IF EXISTS db_station_service_CarService_RepairOrders_drafts;
DROP TABLE IF EXISTS db_station_service_CarService_RepairOrderItems_drafts;
DROP TABLE IF EXISTS db_station_service_CarService_Parts_drafts;
DROP TABLE IF EXISTS db_station_service_CarService_Customers_drafts;
DROP TABLE IF EXISTS db_station_service_CarService_Cars_drafts;
DROP TABLE IF EXISTS DRAFT_DraftAdministrativeData;
DROP TABLE IF EXISTS cds_outbox_Messages;
DROP TABLE IF EXISTS db_station_Services;
DROP TABLE IF EXISTS db_station_RepairOrderServices;
DROP TABLE IF EXISTS db_station_RepairOrders;
DROP TABLE IF EXISTS db_station_RepairOrderItems;
DROP TABLE IF EXISTS db_station_Parts;
DROP TABLE IF EXISTS db_station_Customers;
DROP TABLE IF EXISTS db_station_Cars;

CREATE TABLE db_station_Cars (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7),
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP(7),
  modifiedBy NVARCHAR(255),
  licensePlate NVARCHAR(20),
  brand NVARCHAR(255),
  model NVARCHAR(40),
  "YEAR" NVARCHAR(4),
  mileage INTEGER,
  vin NVARCHAR(17),
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

CREATE TABLE db_station_Parts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7),
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP(7),
  modifiedBy NVARCHAR(255),
  name NVARCHAR(100),
  partNumber NVARCHAR(50),
  description NVARCHAR(500),
  unitPrice DECIMAL(11, 2),
  stock DECIMAL(9, 2),
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_RepairOrderItems (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7),
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP(7),
  modifiedBy NVARCHAR(255),
  repairOrder_ID NVARCHAR(36),
  part_ID NVARCHAR(36),
  quantity DECIMAL(9, 2),
  unitPrice DECIMAL(9, 2),
  totalPrice DECIMAL(11, 2),
  notes NVARCHAR(2000),
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_RepairOrders (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7),
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP(7),
  modifiedBy NVARCHAR(255),
  car_ID NVARCHAR(36),
  status NVARCHAR(255) DEFAULT 'NEW',
  description NVARCHAR(1000),
  plannedDate DATE,
  startDate TIMESTAMP(0),
  endDate TIMESTAMP(0),
  mileage INTEGER,
  notes NVARCHAR(2000),
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_RepairOrderServices (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7),
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP(7),
  modifiedBy NVARCHAR(255),
  repairOrder_ID NVARCHAR(36),
  service_ID NVARCHAR(36),
  quantity DECIMAL(9, 2),
  unitPrice DECIMAL(11, 2),
  totalPrice DECIMAL(11, 2),
  notes NVARCHAR(2000),
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_Services (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7),
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP(7),
  modifiedBy NVARCHAR(255),
  name NVARCHAR(100),
  description NVARCHAR(500),
  price DECIMAL(11, 2),
  duration INTEGER,
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
  brand NVARCHAR(255) NULL,
  model NVARCHAR(40) NULL,
  "YEAR" NVARCHAR(4) NULL,
  mileage INTEGER NULL,
  vin NVARCHAR(17) NULL,
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
  fullName NVARCHAR(80) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_service_CarService_Parts_drafts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7) NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP(7) NULL,
  modifiedBy NVARCHAR(255) NULL,
  name NVARCHAR(100) NULL,
  partNumber NVARCHAR(50) NULL,
  description NVARCHAR(500) NULL,
  unitPrice DECIMAL(11, 2) NULL,
  stock DECIMAL(9, 2) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_service_CarService_RepairOrderItems_drafts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7) NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP(7) NULL,
  modifiedBy NVARCHAR(255) NULL,
  repairOrder_ID NVARCHAR(36) NULL,
  part_ID NVARCHAR(36) NULL,
  quantity DECIMAL(9, 2) NULL,
  unitPrice DECIMAL(9, 2) NULL,
  totalPrice DECIMAL(11, 2) NULL,
  notes NVARCHAR(2000) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_service_CarService_RepairOrders_drafts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7) NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP(7) NULL,
  modifiedBy NVARCHAR(255) NULL,
  car_ID NVARCHAR(36) NULL,
  status NVARCHAR(255) NULL DEFAULT 'NEW',
  description NVARCHAR(1000) NULL,
  plannedDate DATE NULL,
  startDate TIMESTAMP(0) NULL,
  endDate TIMESTAMP(0) NULL,
  mileage INTEGER NULL,
  notes NVARCHAR(2000) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_service_CarService_RepairOrderServices_drafts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7) NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP(7) NULL,
  modifiedBy NVARCHAR(255) NULL,
  repairOrder_ID NVARCHAR(36) NULL,
  service_ID NVARCHAR(36) NULL,
  quantity DECIMAL(9, 2) NULL,
  unitPrice DECIMAL(11, 2) NULL,
  totalPrice DECIMAL(11, 2) NULL,
  notes NVARCHAR(2000) NULL,
  IsActiveEntity BOOLEAN,
  HasActiveEntity BOOLEAN,
  HasDraftEntity BOOLEAN,
  DraftAdministrativeData_DraftUUID NVARCHAR(36) NOT NULL,
  PRIMARY KEY(ID)
);

CREATE TABLE db_station_service_CarService_Services_drafts (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP(7) NULL,
  createdBy NVARCHAR(255) NULL,
  modifiedAt TIMESTAMP(7) NULL,
  modifiedBy NVARCHAR(255) NULL,
  name NVARCHAR(100) NULL,
  description NVARCHAR(500) NULL,
  price DECIMAL(11, 2) NULL,
  duration INTEGER NULL,
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
  Cars_0.mileage,
  Cars_0.vin,
  Cars_0.customer_ID,
  customer_1.name || ' ' || customer_1.surname AS customerFullName
FROM (db_station_Cars AS Cars_0 LEFT JOIN db_station_Customers AS customer_1 ON Cars_0.customer_ID = customer_1.ID);

CREATE VIEW db_station_service_CarService_Customers AS SELECT
  Customers_0.ID,
  Customers_0.name,
  Customers_0.surname,
  Customers_0.email,
  Customers_0.name || ' ' || Customers_0.surname AS fullName
FROM db_station_Customers AS Customers_0;

CREATE VIEW db_station_service_CarService_Parts AS SELECT
  Parts_0.ID,
  Parts_0.createdAt,
  Parts_0.createdBy,
  Parts_0.modifiedAt,
  Parts_0.modifiedBy,
  Parts_0.name,
  Parts_0.partNumber,
  Parts_0.description,
  Parts_0.unitPrice,
  Parts_0.stock
FROM db_station_Parts AS Parts_0;

CREATE VIEW db_station_service_CarService_RepairOrderItems AS SELECT
  RepairOrderItems_0.ID,
  RepairOrderItems_0.createdAt,
  RepairOrderItems_0.createdBy,
  RepairOrderItems_0.modifiedAt,
  RepairOrderItems_0.modifiedBy,
  RepairOrderItems_0.repairOrder_ID,
  RepairOrderItems_0.part_ID,
  RepairOrderItems_0.quantity,
  RepairOrderItems_0.unitPrice,
  RepairOrderItems_0.totalPrice,
  RepairOrderItems_0.notes
FROM db_station_RepairOrderItems AS RepairOrderItems_0;

CREATE VIEW db_station_service_CarService_RepairOrders AS SELECT
  RepairOrders_0.ID,
  RepairOrders_0.createdAt,
  RepairOrders_0.createdBy,
  RepairOrders_0.modifiedAt,
  RepairOrders_0.modifiedBy,
  RepairOrders_0.car_ID,
  RepairOrders_0.status,
  RepairOrders_0.description,
  RepairOrders_0.plannedDate,
  RepairOrders_0.startDate,
  RepairOrders_0.endDate,
  RepairOrders_0.mileage,
  RepairOrders_0.notes
FROM db_station_RepairOrders AS RepairOrders_0;

CREATE VIEW db_station_service_CarService_RepairOrderServices AS SELECT
  RepairOrderServices_0.ID,
  RepairOrderServices_0.createdAt,
  RepairOrderServices_0.createdBy,
  RepairOrderServices_0.modifiedAt,
  RepairOrderServices_0.modifiedBy,
  RepairOrderServices_0.repairOrder_ID,
  RepairOrderServices_0.service_ID,
  RepairOrderServices_0.quantity,
  RepairOrderServices_0.unitPrice,
  RepairOrderServices_0.totalPrice,
  RepairOrderServices_0.notes
FROM db_station_RepairOrderServices AS RepairOrderServices_0;

CREATE VIEW db_station_service_CarService_Services AS SELECT
  Services_0.ID,
  Services_0.createdAt,
  Services_0.createdBy,
  Services_0.modifiedAt,
  Services_0.modifiedBy,
  Services_0.name,
  Services_0.description,
  Services_0.price,
  Services_0.duration
FROM db_station_Services AS Services_0;

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
