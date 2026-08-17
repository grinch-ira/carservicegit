using db.station.service.CarService as service from '../../srv/model/services/CarService';

annotate service.Cars with @(
    UI.SelectionFields            : [
        brand,
        model,
        year,
        licensePlate,
    ],
    UI.LineItem                   : [
        {
            $Type                : 'UI.DataField',
            Value                : licensePlate,
            ![@HTML5.CssDefaults]: {width: '20%'},
        },
        {
            $Type                : 'UI.DataField',
            Value                : brand,
            ![@HTML5.CssDefaults]: {width: '20%'},
        },
        {
            $Type                : 'UI.DataField',
            Value                : model,
            ![@HTML5.CssDefaults]: {width: '20%'},
        },
        {
            $Type                : 'UI.DataField',
            Value                : year,
            ![@HTML5.CssDefaults]: {width: '20%'},
        },
        {
            $Type: 'UI.DataField',
            Value: mileage
        },
        {
            $Type: 'UI.DataField',
            Value: vin
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target: '@Communication.Contact#contact',
            Label : '{i18n>CONTACT_NAME}',
        },
    ],

    UI.FieldGroup #GeneratedGroup : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type                : 'UI.DataField',
                Value                : licensePlate,
                ![@HTML5.CssDefaults]: {width: '20%'},
            },
            {
                $Type                : 'UI.DataField',
                Value                : brand,
                ![@HTML5.CssDefaults]: {width: '20%'},
            },
            {
                $Type                : 'UI.DataField',
                Value                : model,
                ![@HTML5.CssDefaults]: {width: '20%'},
            },
            {
                $Type                : 'UI.DataField',
                Value                : year,
                ![@HTML5.CssDefaults]: {width: '20%'},
            },
            {
                $Type                : 'UI.DataField',
                Value                : mileage,
                ![@HTML5.CssDefaults]: {width: '20%'},
            },
            {
                $Type                : 'UI.DataField',
                Value                : vin,
                ![@HTML5.CssDefaults]: {width: '20%'},
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target: '@Communication.Contact#contact',
                Label : '{i18n>CONTACT_NAME}',
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : '{i18n>GENERAL_INFORMATION}',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],

    Communication.Contact #contact: {
        $Type: 'Communication.ContactType',
        fn   : customerFullName,
    },

);


annotate service.Cars with @Common.Label: '{i18n>CARS_ENTITY}' {
    @UI.Hidden
    ID;

    // customer_ID @(
    //     Common.Text       : customerFullName,
    //     UI.TextArrangement: #TextOnly
    // );

    // @UI.Hidden
    // customer_ID;

    @UI.Hidden
    customerFullName;

    @Common.Label: '{i18n>CREATED_AT}'
    createdAt;

    @Common.Label: '{i18n>MODIFIED_AT}'
    modifiedAt;

    @Common.Label: '{i18n>LICENSE_PLATE}'
    licensePlate;

    @Common.Label: '{i18n>BRAND}'
    brand;

    @Common.Label: '{i18n>MODEL}'
    model;

    @Common.Label: '{i18n>MILEAGE}'
    mileage;

    @Common.Label: '{i18n>VIN_NUMBER}'
    vin;

    @Common.Label: '{i18n>CAR_YEAR}'
    year;

    // @Common.Label: '{i18n>CUSTOMER}'
    // @UI.Hidden
    // customer;

    @Common.Label: '{i18n>CUSTOMER}'
    customer    @Common.Text: {
        $value                : customerFullName,
        ![@UI.TextArrangement]: #TextOnly
    };
}

annotate service.Cars with @(UI.CreateFields: [
    {
        $Type: 'UI.DataField',
        Value: licensePlate
    },
    {
        $Type: 'UI.DataField',
        Value: vin
    },
    {
        $Type: 'UI.DataField',
        Value: brand
    },
    {
        $Type: 'UI.DataField',
        Value: model
    },
    {
        $Type: 'UI.DataField',
        Value: year
    },
    {
        $Type: 'UI.DataField',
        Value: mileage
    },
    {
        $Type: 'UI.DataField',
        Value: customer
    }
], );

annotate service.Cars with {
    customer @(
        Common.Text     : customerFullName,
        Common.ValueList: {
            $Type          : 'Common.ValueListType',
            CollectionPath : 'Customers',
            SearchSupported: true,

            Parameters     : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: customer_ID,
                    ValueListProperty: 'ID'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'fullName'
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'email'
                }
            ]
        }
    );
};
