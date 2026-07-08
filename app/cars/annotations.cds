using db.station.service.CarService as service from '../../srv/model/services/CarService';
annotate service.Cars with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'licensePlate',
                Value : licensePlate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'brand',
                Value : brand,
            },
            {
                $Type : 'UI.DataField',
                Label : 'model',
                Value : model,
            },
            {
                $Type : 'UI.DataField',
                Label : 'year',
                Value : year,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'licensePlate',
            Value : licensePlate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'brand',
            Value : brand,
        },
        {
            $Type : 'UI.DataField',
            Label : 'model',
            Value : model,
        },
        {
            $Type : 'UI.DataField',
            Label : 'year',
            Value : year,
        },
        {
            $Type : 'UI.DataField',
            Value : customerFullName,
            Label : 'name',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@Communication.Contact#contact',
            Label : 'Contact Name',
        },
    ],
    UI.SelectionFields : [
        brand,
        model,
        year,
        licensePlate,
    ],
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : customerFullName,
    },
);

annotate service.Cars with {
    customer @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Customers',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : customer_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'surname',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email',
            },
        ],
    }
};

annotate service.Cars with {
    brand @Common.Label : 'brand'
};

annotate service.Customers with {
    name @Common.Label : 'customer/name'
};

annotate service.Cars with {
    model @Common.Label : 'model'
};

annotate service.Cars with {
    year @Common.Label : 'year'
};

annotate service.Cars with {
    licensePlate @Common.Label : 'licensePlate'
};

