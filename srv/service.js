const cds = require("@sap/cds");


module.exports = cds.service.impl(async function (srv) {

    // no params
    srv.on("sayHello", async (req) => {
        try{
            return "hello world";
        }
        catch(error) {}
    });

    // simple param (string)
    srv.on("sayHelloTo", async (req) => {
        try{
            return "hello " + req.data.name;
        }
        catch(error) {}
    });

    srv.on("VendorCreate", async (req) => {
        try {                                               
            // grab the input object
            var oInVendor = req.data.Vendor;
            var aVendor = [{VENDORUID : oInVendor.VendorUID, NAME: oInVendor.Name, CATEGORY: oInVendor.Category}];            
            
            const db = await cds.connect.to('db');
            const dbClass = require("sap-hdbext-promisfied");
            
            let dbConn = new dbClass(await dbClass.createConnection(db.options.credentials));
            const hdbext = require("@sap/hdbext");

            const sp = await dbConn.loadProcedurePromisified(hdbext, null, 'SP_VENDOR_CRT_UPD');                        
            const output = await dbConn.callProcedurePromisified(sp,aVendor);
            return true;

        } catch(error) {
            console.log("*****");
            console.log(error);
            console.log("*****");
            return false;
        }
    });
});