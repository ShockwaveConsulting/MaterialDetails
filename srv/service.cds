using { com.ShockwaveConsulting as o} from '../db/schema';
using CV_VENDOR_PARTS from '../db/schema';


@path: 'api/materialSvc'
service MaterialService {
    @requires: 'authenticated-user'
    entity Parts     as projection on o.Parts;
    
    entity Materials as projection on o.Materials;
     
    @requires: 'Admin' 
    entity Vendors   as projection on o.Vendors;

    @readonly
    entity VendorParts as projection on CV_VENDOR_PARTS;

    function sayHello() returns String;
    
    function sayHelloTo(name: String) returns String;

    type oVendor {
        VendorUID : String;
        Name      : String;
        Category  : String;
    }
    action VendorCreate(Vendor: oVendor) returns Boolean;

    

}