context com.ShockwaveConsulting {

  entity Vendor {
    key VendorUID   : UUID @(Core.Computed : true);        
        Name        : String(50);
        Category    : String(50);
  }

  entity Material {
    key MaterialUUID    : UUID @(Core.Computed : true);
    Description     : String(50);
    AvailabiltyDt   : Date;
  }

  entity Part {
    key PartUUID    : UUID @(Core.Computed  : true);
    Description     : String(50);
    material        : Association to Material;
    vendor          : Association to Vendor;
    Price           : Decimal(10,2);    
  }
}