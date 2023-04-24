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

@cds.persistence.exists 
@cds.persistence.calcview 
Entity CV_VENDOR_PARTS {
key     VENDORUID  : String(36)     @title: 'VENDORUID: VENDORUID' ; 
        VENDOR_NAME: String(50)     @title: 'VENDOR_NAME: NAME' ; 
        CATEGORY   : String(50)     @title: 'CATEGORY: CATEGORY' ; 
        PARTUUID   : String(36)     @title: 'PARTUUID: PARTUUID' ; 
        PART_DESCRIPTION: String(50)@title: 'PART_DESCRIPTION: DESCRIPTION' ; 
        PRICE      : Decimal(10)    @title: 'PRICE: PRICE' ; 
}
