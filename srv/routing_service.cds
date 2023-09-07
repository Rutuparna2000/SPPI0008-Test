using { ZPP_NS_SPPI0008 as db } from '../db/routing_schema';

service ZPP_NS_SPPI0008_Staging_Updt {

    entity ZPP_HT_SPPICOMMON_REQ_INFO as projection on db.ZPP_HT_SPPICOMMON_REQ_INFO;

    entity ZPP_HT_SPPICOMMON_REPLACE_PARAM as projection on db.ZPP_HT_SPPICOMMON_REPLACE_PARAM;

    entity ZPP_HT_SPPE0001_ROUTING_STG as projection on db.ZPP_HT_SPPE0001_ROUTING_STG;

}