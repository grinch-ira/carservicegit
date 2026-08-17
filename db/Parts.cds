namespace db.station;

using {
    managed,
    cuid
} from '@sap/cds/common';

entity Parts : cuid, managed {
    name        : String(100);
    @Core.Immutable
    partNumber  : String(50);
    description : String(500);
    unitPrice   : Decimal(11, 2);
    stock       : Decimal(9, 2);
}
