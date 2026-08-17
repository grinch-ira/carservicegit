namespace db.station;

using {
    managed,
    cuid
} from '@sap/cds/common';

using db.station as station from '.';

entity RepairOrderServices : cuid, managed {
    repairOrder : Association to one station.RepairOrders;
    service     : Association to one station.Services;

    quantity    : Decimal(9, 2);
    unitPrice   : Decimal(11, 2);
    totalPrice  : Decimal(11, 2);
    notes       : String(2000);
}
