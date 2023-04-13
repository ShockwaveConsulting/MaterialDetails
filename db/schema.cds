context com.ShockwaveConsulting {

  entity Vendors {
    key VendorUID   : UUID @(Core.Computed : true);        
        Name        : String(50);
        Category    : String(50);
  }

  entity Materials {
    key MaterialUUID: UUID @(Core.Computed : true);
    Description     : String(50);
    AvailabilityDt  : Date;
  }

  entity Parts {
    key PartUUID   : UUID @(Core.Computed  : true);
    Description    : String(50);    
    vendors        : String(50);
    materials      : String(50);
    Price          : Decimal(10,2);        
  }
}