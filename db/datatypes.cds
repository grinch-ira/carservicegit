namespace db.station;

type carModel          : String(40);
type carLicensePlate   : String(20);

type RepairOrderStatus : String enum {
    NEW;
    DIAGNOSIS;
    WAITING_FOR_APPROVAL;
    APPROVED;
    IN_PROGRESS;
    WAITING_FOR_PARTS;
    COMPLETED;
    CANCELLED;
}


type carBrand : String enum {
    BMW;
    AUDI;
    MERCEDES;
    VOLKSWAGEN;
    TOYOTA;
    HONDA;
    FORD;
    OPEL;
    SKODA;
    VOLVO;
    TESLA;
    NISSAN;
    HYUNDAI;
    KIA;
    MAZDA;
    SUBARU;
    PEUGEOT;
    RENAULT;
    CITROEN;
    FIAT;
    PORSCHE;
    LAND_ROVER;
    JAGUAR;
    LEXUS;
    MITSUBISHI;
    SUZUKI;
    OTHER;
}