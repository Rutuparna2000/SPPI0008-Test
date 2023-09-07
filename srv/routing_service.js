const cds = require('@sap/cds');

const { ZPP_HT_SPPICOMMON_REQ_INFO, ZPP_HT_SPPICOMMON_REPLACE_PARAM, ZPP_HT_SPPE0001_ROUTING_STG } = cds.entities('ZPP_NS_SPPI0008');

module.exports = cds.service.impl((srv) => {

    srv.on("READ","ZPP_HT_SPPICOMMON_REQ_INFO", async (req, next) => {
        
        myres = await next();      //generic handler
        
        if (req.data.JobType == 1) {
            let data;
            const date_val = await cds.tx(req).run ( SELECT `ZZ_Replace_Param`.from(ZPP_HT_SPPICOMMON_REPLACE_PARAM).where(`ZZ_RICEFW_ID=${req.data.ZZ_RICEFW_ID}and ZZ_Link_ID=${req.data.ZZ_Link_ID}`) );

            for (let index = 0; index < myres.length; index++) {
                data = JSON.stringify(myres[index]);
                data = data.replace(/@/g, date_val);
                console.log(data);
            }

        };
        return myres;
    });


});
