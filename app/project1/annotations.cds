using MaterialService as service from '../../srv/service';

annotate service.Parts with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : Description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'vendors',
            Value : vendors,
        },
        {
            $Type : 'UI.DataField',
            Label : 'materials',
            Value : materials,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Price',
            Value : Price,
        },
    ]
);
annotate service.Parts with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Description',
                Value : Description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'vendors',
                Value : vendors,
            },
            {
                $Type : 'UI.DataField',
                Label : 'materials',
                Value : materials,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Price',
                Value : Price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
