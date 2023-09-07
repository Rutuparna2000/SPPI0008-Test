namespace ZPP_NS_SPPI0008;

using {
    cuid,
    managed
} from '@sap/cds/common';


// Request Information Parameter Table
entity ZPP_HT_SPPICOMMON_REQ_INFO : managed {
    key ZZ_RICEFW_ID   : String(10); // RICEFW ID
    key ZZ_Mapkey1     : String(50); // Mapping Key 1
    key ZZ_Mapkey2     : String(50); // Mapping Key 2
    key ZZ_Mapkey3     : String(50); // Mapping Key 3
    key ZZ_Name        : String(50); // Name
        ZZ_Value       : String(255); // Value
        ZZ_Status      : String(1); // Status
        ZZ_Description : String(255); // Description
}

// Replacement Parameter Table
entity ZPP_HT_SPPICOMMON_REPLACE_PARAM : managed {
    key ZZ_RICEFW_ID     : String(10); // RICEFW ID
    key ZZ_Link_ID       : String(50); // Link ID
        ZZ_Replace_Param : String(255); // Replacement Parameter
        ZZ_Description   : String(255); // Description
}

// Staging Table
entity ZPP_HT_SPPE0001_ROUTING_STG : cuid, managed {
    key ZZ_InterfaceGroupID : Integer @assert.unique; // Interface Group ID
        ZZ_MESid            : String; // MES ID
        ZZ_MESplace         : String; // MES Place
        ZZ_Plant            : String; // Plant
        ZZ_HouseName        : String; // House Name
        ZZ_TypeBlock        : String; // Type Block
        ZZ_TotalOpeCount    : Integer; // Total Operation Count
        ZZ_OpeSeq           : Integer; // Operation Sequence
        ZZ_Operation        : String; // Opeartion
        ZZ_Stage            : String; // Stage Name
        ZZ_ValidFrom        : Timestamp; // Valid From
        ZZ_Yield            : Integer; // Yield
        ZZ_WorkCenter       : String; // Work Center
        ZZ_SubconPrice      : Integer; // Subcon Unit Price
        ZZ_Status           : Integer; // Status
}
