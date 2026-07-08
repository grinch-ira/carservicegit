namespace db.station;

using {cuid} from '@sap/cds/common';

entity Customers : cuid {
    name        : String(30);
    surname     : String(30);
    @assert.format: {
        $value : '/^\S+@\S+\.\S+$/',
        message: 'customer_email'
    }
    email       : String(30);
}