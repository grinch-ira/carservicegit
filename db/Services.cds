namespace db.station;

using {cuid, managed} from '@sap/cds/common';

entity Services : cuid, managed {
    name        : String(100);
    description : String(500);
    price       : Decimal(11, 2);
    duration    : Integer;
}
