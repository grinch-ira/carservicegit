namespace db.station.service;

using {db.station as station} from '../../../db';

@path: '/service/CarService'
service CarService {
    @cds.redirection.target
    @odata.draft.enabled
    entity Cars                as
        projection on station.Cars {
            *,
            customer.name || ' ' || customer.surname as customerFullName : String(80)
        };

    @cds.redirection.target
    @odata.draft.enabled
    entity Customers           as
        projection on station.Customers {
            *,
        name || ' ' || surname as fullName : String(80)
        };

    @cds.redirection.target
    @odata.draft.enabled
    entity Parts               as
        projection on station.Parts {
            *
        };

    @cds.redirection.target
    @odata.draft.enabled
    entity RepairOrderItems    as
        projection on station.RepairOrderItems {
            *
        };

    @cds.redirection.target
    @odata.draft.enabled
    entity RepairOrders        as
        projection on station.RepairOrders {
            *
        };

    @cds.redirection.target
    @odata.draft.enabled
    entity RepairOrderServices as
        projection on station.RepairOrderServices {
            *
        };

    @cds.redirection.target
    @odata.draft.enabled
    entity Services            as
        projection on station.Services {
            *
        };
}

// annotate CarService with @requires: ['authenticated-user'];
