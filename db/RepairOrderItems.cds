namespace db.station;

using {
    managed,
    cuid
} from '@sap/cds/common';

using db.station as station from '.';

entity RepairOrderItems : cuid, managed {
    repairOrder : Association to one station.RepairOrders;
    part        : Association to one station.Parts;

    quantity    : Decimal(9, 2);
    unitPrice   : Decimal(9, 2);

    totalPrice  : Decimal(11, 2);

    notes       : String(2000);
}
