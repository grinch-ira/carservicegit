namespace db.station.service;

using { db.station as station } from '../../../db/Cars';

@path : '/service/CarService'
service CarService
{
    @cds.redirection.target
    @odata.draft.enabled
    entity Cars as
        projection on station.Cars
        {
            *,
            customer.name || ' ' || customer.surname as customerFullName : String(80)
        };

    @cds.redirection.target
    @odata.draft.enabled
    entity Customers as
        projection on station.Customers
        {
            *
        };
}

annotate CarService with @requires :
[
    'authenticated-user'
];
