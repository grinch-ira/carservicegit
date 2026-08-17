namespace db.station;

using {
    managed,
    cuid
} from '@sap/cds/common';

using db.station as station from '.';

entity Cars : cuid, managed {
    @Core.Immutable
    @mandatory
    licensePlate : station.carLicensePlate not null;
    @mandatory
    brand        : station.carBrand not null;
    @mandatory
    model        : station.carModel not null;

    @assert.format: {
        $value : '^(19[5-9][0-9]|20[0-2][0-9]|2026)$',
        message: 'Year must be between 1950 and 2026'
    }
    year         : String(4);
    mileage      : Integer;

    @Core.Immutable
    vin          : String(17);
    @Core.Immutable
    @mandatory
    customer     : Association to one station.Customers not null;
}
