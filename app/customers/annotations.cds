using db.station.service.CarService as service from '../../srv/model/services/CarService';

annotate service.Customers with @(
    UI.HeaderInfo                : {
        TypeName      : 'Customer',
        TypeNamePlural: 'Customers',
        Title         : {Value: fullName}
    },
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Value: surname,
        },
        {
            $Type: 'UI.DataField',
            Value: email,
        },
    ],
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Value: surname,
            },
            {
                $Type: 'UI.DataField',
                Value: email,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],


);


annotate service.Customers with @Common.Label: '{i18n>CUSTOMER_ENTITY}' {

    @UI.Hidden
    ID @(
        Common.Text: fullName,
        UI.TextArrangement: #TextOnly
    );

    @Common.Label: '{i18n>CUSTOMER_NAME}'
    name;

    @Common.Label: '{i18n>CUSTOMER_SURNAME}'
    surname;

    @Common.Label: '{i18n>CUSTOMER_EMAIL}'
    email;

    @Common.Label: '{i18n>CUSTOMER_CONTACT}'
    fullName;

}
