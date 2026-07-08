namespace db.station;

using
{
    managed,
    cuid
}
from '@sap/cds/common';

using db.station as station from '.';

entity Cars : cuid, managed
{
    licensePlate : station.carLicensePlate;
    brand : station.carBrand;
    model : station.carModel;
    @assert.range :[
            [1950],
            [2026]
    ]
    year : Integer;
    customer : Association to one station.Customers;
}
