namespace db.station;

using {
    managed,
    cuid
} from '@sap/cds/common';

using db.station as station from '.';

entity RepairOrders : cuid, managed {
    car         : Association to one station.Cars;

    status      : station.RepairOrderStatus default 'NEW';

    description : String(1000);

    plannedDate : Date;
    startDate   : DateTime;
    endDate     : DateTime;
    mileage     : Integer;
    notes       : String(2000);
}
