using db.station.service.CarService as service from '../../srv/model/services/CarService';

annotate service.Parts with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'partNumber',
                Value: partNumber,
            },
            {
                $Type: 'UI.DataField',
                Label: 'unitPrice',
                Value: unitPrice,
            },
            {
                $Type: 'UI.DataField',
                Label: 'stock',
                Value: stock,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                   : [
        {
            $Type: 'UI.DataField',
            Label: 'name',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Label: 'partNumber',
            Value: partNumber,
        },
        {
            $Type: 'UI.DataField',
            Label: 'unitPrice',
            Value: unitPrice,
        },
        {
            $Type: 'UI.DataField',
            Label: 'stock',
            Value: stock,
        },
    ],
    UI.SelectionFields            : [
        brand,
        model,
        year,
        licensePlate,
    ],
    Communication.Contact #contact: {
        $Type: 'Communication.ContactType',
        fn   : customerFullName,
    },
);

// annotate service.Cars with {
//     customer @Common.ValueList: {
//         $Type         : 'Common.ValueListType',
//         CollectionPath: 'Customers',
//         Parameters    : [
//             {
//                 $Type            : 'Common.ValueListParameterInOut',
//                 LocalDataProperty: customer_ID,
//                 ValueListProperty: 'ID',
//             },
//             {
//                 $Type            : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty: 'name',
//             },
//             {
//                 $Type            : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty: 'surname',
//             },
//             {
//                 $Type            : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty: 'email',
//             },
//         ],
//     }
// };
