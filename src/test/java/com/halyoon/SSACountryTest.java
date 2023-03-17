package com.halyoon;

import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import com.halyoon.xmlgenerator.pojo.Attribute;
import com.halyoon.xmlgenerator.pojo.Row;
import com.halyoon.xmlgenerator.security.securitygroupsid.ForeignOffice;
import com.halyoon.xmlgenerator.security.securitygroupsid.SSACountry;
import com.halyoon.xmlgenerator.security.securitygroupsid.SecurityGroupSid;
import com.poiji.bind.Poiji;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class SSACountryTest {

    @Test
    public void ssaCountryExcelTest() throws IOException {
        int concernId = 80110;
        int concernRoleId = 80030;
        int concernRoleAddressId = 80030;
        int addressId = 80723;
        int addressElementId = 87050;
        int externalPartyOfficeId = 80034;
        int externalPartyHistoryId = 80000;
        int officeAddressId = 80013;
        int alternateId = 80110;
        int concernRoleAlternateId = 80110;

        Map<String, ExsitingSSACountry> existingCountriesMap = new HashMap<>() {{
            put("United Kingdom".toLowerCase(), new ExsitingSSACountry(80010, 80080));
            put("United States".toLowerCase(), new ExsitingSSACountry(80011, 80081));
            put("Japan".toLowerCase(), new ExsitingSSACountry(80012, 80082));
            put("Antigua and Barbuda".toLowerCase(), new ExsitingSSACountry(80013, 80083));
            put("Finland".toLowerCase(), new ExsitingSSACountry(80021, 80701));
            put("France".toLowerCase(), new ExsitingSSACountry(80022, 80702));
            put("Germany".toLowerCase(), new ExsitingSSACountry(80023, 80703));
            put("Greece".toLowerCase(), new ExsitingSSACountry(80024, 80704));
            put("Iceland".toLowerCase(), new ExsitingSSACountry(80025, 80705));
            put("Italy".toLowerCase(), new ExsitingSSACountry(80026, 80706));
            put("Portugal".toLowerCase(), new ExsitingSSACountry(80027, 80707));
            put("Mexico".toLowerCase(), new ExsitingSSACountry(80029, 80709));
        }};

        String sqlAddress = "Insert into ADDRESS (ADDRESSID,COUNTRYCODE,MODIFIABLEIND,ADDRESSDATA,ADDRESSLAYOUTTYPE,GEOCODE,LATITUDE,LONGITUDE,VERSIONNO,LASTWRITTEN) values (%s,%s,'1',%s,'BDMINTL',null,0,0,1,to_date('22-09-15','RR-MM-DD'));";
        String sqlAddressUpdate = "update ADDRESS set ADDRESSDATA = %s where ADDRESSID = %s;";
        String sqlAddressElement = "Insert into ADDRESSELEMENT (ADDRESSELEMENTID,ADDRESSID,ELEMENTTYPE,ELEMENTVALUE,UPPERELEMENTVALUE) values (%s,%s,'%s','%s','%s');";
        String sqlConcern = "Insert into CONCERN (CONCERNID,CREATIONDATE,NAME,COMMENTS,VERSIONNO) values (%s,to_date('23-02-16','RR-MM-DD'),%s,null,1);";
        String sqlConcernUpdate = "update CONCERN set name = '%s' where CONCERNID = %s;";

        String sqlConcernRole = "Insert into CONCERNROLE (CONCERNID,CONCERNROLEID,CONCERNROLETYPE,CREATIONDATE,REGISTRATIONDATE,STARTDATE,ENDDATE,STATUSCODE,CONCERNROLENAME,PRIMARYADDRESSID,PRIMARYALTERNATEID,COMMENTS,PRIMARYPHONENUMBERID,PRIMARYEMAILADDRESSID,PRIMARYBANKACCOUNTID,REGUSERNAME,PREFPUBLICOFFICEID,PREFERREDLANGUAGE,SENSITIVITY,PREFCOMMMETHOD,PREFCOMMFROMDATE,PREFCOMMTODATE,PRIMARYWEBADDRESSID,VERSIONNO,LASTWRITTEN) values (%s,%s,'RL17',to_date('23-02-16','RR-MM-DD'),to_date('23-02-16','RR-MM-DD'),to_date('23-02-16','RR-MM-DD'),null,'ST1',%s,%s,'%s',null,null,null,null,'jane',null,null,'1',null,null,null,null,1,to_date('23-02-16','RR-MM-DD'));";
        String sqlConcernRoleAlternateId = "Insert into CONCERNROLEALTERNATEID (CONCERNROLEID,ALTERNATEID,TYPECODE,STARTDATE,ENDDATE,STATUSCODE,CONCERNROLEALTERNATEID,COMMENTS,VERSIONNO,LASTWRITTEN) values (%s,'%s','CA7',to_date('23-02-16','RR-MM-DD'),null,'RST1',%s,null,1,to_date('23-02-16','RR-MM-DD'));";
        String sqlConcernRoleAddress = "Insert into CONCERNROLEADDRESS (CONCERNROLEADDRESSID,CONCERNROLEID,ADDRESSID,TYPECODE,STARTDATE,ENDDATE,STATUSCODE,COMMENTS,VERSIONNO,LASTWRITTEN) values (%s,%s,%s,'AT4',to_date('23-02-16','RR-MM-DD'),null,'RST1',null,2,to_date('23-02-16','RR-MM-DD'));";
        String sqlExternalParty = "Insert into EXTERNALPARTY (CONCERNROLEID,PRIMARYALTERNATEID,VERIFICATIONIND,PAYMENTFREQUENCY,METHODOFPMTCODE,CURRENCYTYPE,NEXTPAYMENTDATE,NAME,TYPE,COMMENTS,STATUS,VERSIONNO) values (%s,'%s',null,null,'EFT','CAD',null,'%s','OASC0001',null,'EPS1',1);";
        String sqlBDMExternalParty = "Insert into BDMEXTERNALPARTY (CONCERNROLEID,FORCEENTRYDATE,REVISEDAGRMNTDATE,QCENTRYSTARTDATE,QCENTRYENDDATE,CENTEROFSPECLIZN,TOTALIZATNCOUNTRY,SSALINK,STATUSOFAGREEMENT,ISPROTECTIVEDATE,SSAENDDATE,CREATEDBY,CREATEDON,LASTUPDATEDBY,LASTUPDATEDON,VERSIONNO,LASTWRITTEN) values (%s,'%s','%s','%s','%s','%s','%s','%s','%s','%s',null,'jane',to_date('23-02-16','RR-MM-DD'),'jane',to_date('23-02-16','RR-MM-DD'),1,to_date('23-02-16','RR-MM-DD'));";
        String sqlBDMExternalPartyHistory = "Insert into BDMEXTERNALPARTYHISTORY (EXTPARTYHISTORYID,CONCERNROLEID,FORCEENTRYDATE,REVISEDAGRMNTDATE,QCENTRYSTARTDATE,QCENTRYENDDATE,TOTALIZATNCOUNTRY,SSALINK,STATUSOFAGREEMENT,ISPROTECTIVEDATE,SSAENDDATE,NAME,EVENTTYPE,COMMENTS,CENTEROFSPECLIZN,CREATEDBY,CREATEDON,LASTUPDATEDBY,LASTUPDATEDON,VERSIONNO,LASTWRITTEN) values (%s,%s,'%s','%s','%s','%s','%s','%s','%s','%s',null,'%s','SSACTE01',null,'%s','SYSTEM',to_date('22-09-15','RR-MM-DD'),'SYSTEM',to_date('22-09-15','RR-MM-DD'),1,to_date('22-09-15','RR-MM-DD'));";
        String sqlExternalPartyOffice = "Insert into EXTERNALPARTYOFFICE (EXTERNALPARTYOFFICEID,CONCERNROLEID,NAME,TYPE,STARTDATE,ENDDATE,SERVICEOFFERED,PRIMARYADDRESSID,PRIMARYPHONENUMBERID,RECORDSTATUS,VERSIONNO) values (%s,%s,'%s',null,to_date('23-02-16','RR-MM-DD'),null,null,%s,null,'RST1',3);";
        String sqlExternalPartyOfficeAddress = "Insert into EXTERNALPARTYOFFICEADDRESS (OFFICEADDRESSID,ADDRESSID,TYPE,EXTERNALPARTYOFFICEID,STARTDATE,ENDDATE,RECORDSTATUS,COMMENTS,VERSIONNO) values (%s,%s,'AT4',%s,to_date('23-02-16','RR-MM-DD'),null,'RST1','%s',2);";


        Map<String, String> countryMap = new HashMap<>();
        File file = new File("C:/dev/SSACountryDataTemplatexlsxLatest.xlsx");
        List<SSACountry> ssaCountryList = Poiji.fromExcel(file, SSACountry.class);
        SecurityGroupSid concern = new SecurityGroupSid();
        SecurityGroupSid concernRole = new SecurityGroupSid();
        SecurityGroupSid externalParty = new SecurityGroupSid();
        SecurityGroupSid bdmExternalParty = new SecurityGroupSid();
        SecurityGroupSid bdmExternalPartyHistory = new SecurityGroupSid();
        SecurityGroupSid concernRoleAlternateIdList = new SecurityGroupSid();
        SecurityGroupSid concernRoleAddressList = new SecurityGroupSid();
        SecurityGroupSid externalPartyOffice = new SecurityGroupSid();
        SecurityGroupSid addresses = new SecurityGroupSid();
        SecurityGroupSid addressesElement = new SecurityGroupSid();
        SecurityGroupSid foAddresses = new SecurityGroupSid();
        SecurityGroupSid foAddressesElement = new SecurityGroupSid();
        SecurityGroupSid externalPartyOfficeAddress = new SecurityGroupSid();

        for (SSACountry ssaCountry : ssaCountryList) {
            if (!existingCountriesMap.containsKey(ssaCountry.getName().toLowerCase().trim())) {
                Row concernRow = new Row();
                concernId++;
                concernRow.getAttribute().add(getAttribute("concernID", String.valueOf(concernId)));
                concernRow.getAttribute().add(getAttribute("creationDate", "2023-03-10"));
                concernRow.getAttribute().add(getAttribute("name", ssaCountry.getName()));
                concernRow.getAttribute().add(getAttribute("comments", ""));
                concernRow.getAttribute().add(getAttribute("versionNo", "1"));
                concern.getRow().add(concernRow);
//                System.out.println(String.format(sqlConcern, concernId, sqlEscape(cleanString(ssaCountry.getName()))));
            }else{
//                System.out.println(String.format(sqlConcernUpdate, sqlEscape(cleanString(ssaCountry.getName())), concernId));
            }
            Row addressRow = new Row();
            int ssaAddressId =
                    !existingCountriesMap.containsKey(ssaCountry.getName().toLowerCase().trim()) ? addressId++ : existingCountriesMap.get(ssaCountry.getName().toLowerCase().trim()).getAddressId();
            addressRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressRow.getAttribute().add(getAttribute("COUNTRYCODE", cleanString(ssaCountry.getCountryCode())));
            addressRow.getAttribute().add(getAttribute("MODIFIABLEIND", "1"));
            addressRow.getAttribute().add(getAttribute("ADDRESSDATA",
                    getDmxAddressData(ssaAddressId, cleanString(ssaCountry.getZip()), cleanString(ssaCountry.getAptNum()), cleanString(ssaCountry.getPoBox()),
                            cleanString(ssaCountry.getStreet1()), cleanString(ssaCountry.getStreet2()), cleanString(ssaCountry.getCity()), cleanString(ssaCountry.getState()), cleanString(ssaCountry.getCountryCode()))));
            addressRow.getAttribute().add(getAttribute("ADDRESSLAYOUTTYPE", "BDMINTL"));
            addressRow.getAttribute().add(getAttribute("GEOCODE", ""));
            addressRow.getAttribute().add(getAttribute("LATITUDE", ""));
            addressRow.getAttribute().add(getAttribute("LONGITUDE", ""));
            addressRow.getAttribute().add(getAttribute("VERSIONNO", "1"));
            addresses.getRow().add(addressRow);

//            if (!existingCountriesMap.containsKey(ssaCountry.getName().toLowerCase().trim())){
//                System.out.println(String.format(sqlAddress, ssaAddressId, ssaCountry.getCountryCode(), getAddressData(ssaAddressId, ssaCountry.getZip(), ssaCountry.getAptNum(), ssaCountry.getPoBox(),
//                ssaCountry.getStreet1(), ssaCountry.getStreet2(), ssaCountry.getCity(), ssaCountry.getState(), ssaCountry.getCountryCode())));
//            }else{
//                System.out.println(String.format(sqlAddressUpdate, getAddressData(ssaAddressId, ssaCountry.getZip(), ssaCountry.getAptNum(), ssaCountry.getPoBox(),
//                        ssaCountry.getStreet1(), ssaCountry.getStreet2(), ssaCountry.getCity(), ssaCountry.getState(), ssaCountry.getCountryCode()), ssaAddressId));
//            }


            Row addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "COUNTRY"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(ssaCountry.getCountryCode())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(ssaCountry.getCountryCode())));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, ssaAddressId, "COUNTRY", sqlEscape(cleanString(ssaCountry.getCountryCode())), sqlEscape(cleanString(ssaCountry.getCountryCode()))));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "POSTCODE"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", ""));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", ""));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, ssaAddressId, "POSTCODE", "", ""));
            addressElementId++;
            addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "ZIP"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", ""));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", ""));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, ssaAddressId, "ZIP", "", ""));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "BDMZIPX"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(ssaCountry.getZip())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(ssaCountry.getZip()).toUpperCase()));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, ssaAddressId, "BDMZIPX", sqlEscape(cleanString(ssaCountry.getZip())), sqlEscape(cleanString(ssaCountry.getZip()).toUpperCase())));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "BDMSTPROVX"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(ssaCountry.getState())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(ssaCountry.getState())));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, ssaAddressId, "BDMSTPROVX", sqlEscape(cleanString(ssaCountry.getState())), sqlEscape(cleanString(ssaCountry.getState()).toUpperCase() )));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "APT"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(ssaCountry.getAptNum())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(ssaCountry.getAptNum())));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, ssaAddressId, "APT",  cleanString(ssaCountry.getAptNum()), cleanString(ssaCountry.getAptNum()).toUpperCase()));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "POBOXNO"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(ssaCountry.getPoBox())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(ssaCountry.getPoBox()).toUpperCase()));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, ssaAddressId, "POBOXNO", sqlEscape(cleanString(ssaCountry.getPoBox())),
//                    sqlEscape(cleanString(ssaCountry.getPoBox()).toUpperCase())));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "ADD1"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(getAddressFromLocation(ssaCountry))));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(getAddressFromLocation(ssaCountry)).toUpperCase()));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, ssaAddressId, "ADD1", sqlEscape(cleanString(getAddressFromLocation(ssaCountry))),
//                    sqlEscape(cleanString(getAddressFromLocation(ssaCountry))).toUpperCase()));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "ADD2"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(ssaCountry.getStreet2())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(ssaCountry.getStreet2()).toUpperCase()));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, ssaAddressId, "ADD2", sqlEscape(ssaCountry.getStreet2()), sqlEscape(ssaCountry.getStreet2()).toUpperCase()));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "CITY"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(ssaCountry.getCity())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(ssaCountry.getCity()).toUpperCase()));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "CITY", sqlEscape(ssaCountry.getCity()), sqlEscape(ssaCountry.getCity()).toUpperCase()));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(ssaAddressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "PROV"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", ""));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", ""));
            addressesElement.getRow().add(addressElementRow);
//            System.out.println(String.format(sqlAddressElement, addressElementId, ssaAddressId, "PROV", "", ""));

            if(!existingCountriesMap.containsKey(ssaCountry.getName().toLowerCase().trim())) {
                Row concernRoleRow = new Row();
                int ssaConcernRoleId = concernRoleId++;
                int ssaAlternateId = alternateId++;
                concernRoleRow.getAttribute().add(getAttribute("concernID", String.valueOf(concernId)));
                concernRoleRow.getAttribute().add(getAttribute("concernRoleID", String.valueOf(concernRoleId)));
                concernRoleRow.getAttribute().add(getAttribute("concernRoleType", "RL17"));
                concernRoleRow.getAttribute().add(getAttribute("creationDate", "2023-03-10"));
                concernRoleRow.getAttribute().add(getAttribute("registrationDate", "2023-06-10"));
                concernRoleRow.getAttribute().add(getAttribute("startDate", "2023-03-10"));
                concernRoleRow.getAttribute().add(getAttribute("endDate", ""));
                concernRoleRow.getAttribute().add(getAttribute("statusCode", "ST1"));
                concernRoleRow.getAttribute().add(getAttribute("concernRoleName", cleanString(ssaCountry.getName())));
                concernRoleRow.getAttribute().add(getAttribute("primaryAddressID", String.valueOf(ssaAddressId)));
                concernRoleRow.getAttribute().add(getAttribute("primaryAlternateID", String.valueOf(alternateId)));
                concernRoleRow.getAttribute().add(getAttribute("comments", ""));
                concernRoleRow.getAttribute().add(getAttribute("primaryPhoneNumberID", ""));
                concernRoleRow.getAttribute().add(getAttribute("primaryEmailAddressID", ""));
                concernRoleRow.getAttribute().add(getAttribute("primaryBankAccountID", ""));
                concernRoleRow.getAttribute().add(getAttribute("regUserName", "alice"));
                concernRoleRow.getAttribute().add(getAttribute("prefPublicOfficeID", ""));
                concernRoleRow.getAttribute().add(getAttribute("preferredLanguage", ""));
                concernRoleRow.getAttribute().add(getAttribute("sensitivity", "1"));
                concernRoleRow.getAttribute().add(getAttribute("prefCommMethod", ""));
                concernRoleRow.getAttribute().add(getAttribute("prefCommFromDate", ""));
                concernRoleRow.getAttribute().add(getAttribute("prefCommToDate", ""));
                concernRoleRow.getAttribute().add(getAttribute("primaryWebAddressID", ""));
                concernRoleRow.getAttribute().add(getAttribute("versionNo", "1"));
                concernRoleRow.getAttribute().add(getAttribute("lastWritten", "2023-03-10-11.52.19"));
                concernRole.getRow().add(concernRoleRow);
            }

//            System.out.println(String.format(sqlConcernRole, concernId, concernRoleId, sqlEscape(cleanString(ssaCountry.getName())), ssaAddressId, alternateId));

            Row externalPartyRow = new Row();
            externalPartyRow.getAttribute().add(getAttribute("concernRoleID", String.valueOf(
                    !existingCountriesMap.containsKey(ssaCountry.getName().toLowerCase().trim()) ? concernRoleId : existingCountriesMap.get(ssaCountry.getName().toLowerCase().trim()).getConcernRoleId())));
            externalPartyRow.getAttribute().add(getAttribute("primaryAlternateID", String.valueOf(alternateId)));
            externalPartyRow.getAttribute().add(getAttribute("VERIFICATIONIND", ""));
            externalPartyRow.getAttribute().add(getAttribute("PAYMENTFREQUENCY", ""));
            externalPartyRow.getAttribute().add(getAttribute("METHODOFPMTCODE", ""));
            externalPartyRow.getAttribute().add(getAttribute("currencyType", "CAD"));
            externalPartyRow.getAttribute().add(getAttribute("nextPaymentDate", "SYSDATE"));
            externalPartyRow.getAttribute().add(getAttribute("NAME", cleanString(ssaCountry.getName())));
            externalPartyRow.getAttribute().add(getAttribute("TYPE", "OASC0001"));
            externalPartyRow.getAttribute().add(getAttribute("COMMENTS", ""));
            externalPartyRow.getAttribute().add(getAttribute("STATUS", "EPS1"));
            externalPartyRow.getAttribute().add(getAttribute("VERSIONNO", "1"));
            externalParty.getRow().add(externalPartyRow);

//            System.out.println(String.format(sqlExternalParty, concernRoleId, alternateId, sqlEscape(cleanString(ssaCountry.getName()))));

            Row bdmExternalPartyRow = new Row();
            bdmExternalPartyRow.getAttribute().add(getAttribute("concernRoleID", String.valueOf(
                    !existingCountriesMap.containsKey(ssaCountry.getName().toLowerCase().trim()) ? concernRoleId : existingCountriesMap.get(ssaCountry.getName().toLowerCase().trim()).getConcernRoleId())));
            bdmExternalPartyRow.getAttribute().add(getAttribute("forceEntryDate", getForceEntryDate(cleanString(ssaCountry.getForceEntryDate()))));
            bdmExternalPartyRow.getAttribute().add(getAttribute("revisedAgrmntDate", getForceEntryDate(cleanString(ssaCountry.getRevisedAgreementDate()))));
            bdmExternalPartyRow.getAttribute().add(getAttribute("qcEntryStartDate", getForceEntryDate(cleanString(ssaCountry.getQcEntryStartDate()))));
            bdmExternalPartyRow.getAttribute().add(getAttribute("qcEntryEndDate", getForceEntryDate(cleanString(ssaCountry.getQcEntryEndDate()))));
            bdmExternalPartyRow.getAttribute().add(getAttribute("centerOfSpeclizn", cleanString(ssaCountry.getCos())));
            bdmExternalPartyRow.getAttribute().add(getAttribute("totalizatnCountry", "yes".equalsIgnoreCase(cleanString(ssaCountry.getTotalizationCountry())) ? "BOASYN001" : "BOASYN002"));
            bdmExternalPartyRow.getAttribute().add(getAttribute("ssaLink", cleanString(ssaCountry.getSsaLink())));
            bdmExternalPartyRow.getAttribute().add(getAttribute("statusOfAgreement", getStatusOfAgreementCode(ssaCountry.getStatusOfAgreement())));
            bdmExternalPartyRow.getAttribute().add(getAttribute("isProtectiveDate", ssaCountry.getIsPositive() != null &&"Yes".equalsIgnoreCase(ssaCountry.getIsPositive().trim()) ? "BOASYN001" :"BOASYN002"));
            bdmExternalPartyRow.getAttribute().add(getAttribute("ssaEndDate", ""));
            bdmExternalPartyRow.getAttribute().add(getAttribute("createdBy", "alice"));
            bdmExternalPartyRow.getAttribute().add(getAttribute("createdOn", "2023-02-16"));
            bdmExternalPartyRow.getAttribute().add(getAttribute("lastUpdatedBy", "alice"));
            bdmExternalPartyRow.getAttribute().add(getAttribute("lastUpdatedOn", "2023-02-16-15.36.36"));
            bdmExternalPartyRow.getAttribute().add(getAttribute("versionNo", "1"));
            bdmExternalPartyRow.getAttribute().add(getAttribute("lastWritten", "2023-02-16-15.36.36"));
            bdmExternalParty.getRow().add(bdmExternalPartyRow);

//            System.out.println(String.format(sqlBDMExternalParty, concernRoleId, getForceEntryDate(cleanString(ssaCountry.getForceEntryDate())),
//                    getForceEntryDate(cleanString(ssaCountry.getRevisedAgreementDate())),
//                    getForceEntryDate(cleanString(ssaCountry.getQcEntryStartDate())),
//                    getForceEntryDate(cleanString(ssaCountry.getQcEntryEndDate())),
//                    sqlEscape(cleanString(ssaCountry.getCos())),
//                    "yes".equalsIgnoreCase(cleanString(ssaCountry.getTotalizationCountry())) ? "BOASYN001" : "BOASYN002",
//                    sqlEscape(cleanString(ssaCountry.getSsaLink())),
//                    getStatusOfAgreementCode(ssaCountry.getStatusOfAgreement()),
//                            ssaCountry.getIsPositive() != null &&"Yes".equalsIgnoreCase(ssaCountry.getIsPositive().trim()) ? "BOASYN001" :"BOASYN002"
//                    ));

            Row bdmExternalPartyHistoryRow = new Row();
            externalPartyHistoryId++;
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("EXTPARTYHISTORYID", String.valueOf(externalPartyHistoryId)));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("concernRoleID", String.valueOf(
                    !existingCountriesMap.containsKey(ssaCountry.getName().toLowerCase().trim()) ? concernRoleId : existingCountriesMap.get(ssaCountry.getName().toLowerCase().trim()).getConcernRoleId())));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("forceEntryDate", getForceEntryDate(cleanString(ssaCountry.getForceEntryDate()))));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("revisedAgrmntDate", getForceEntryDate(cleanString(ssaCountry.getRevisedAgreementDate()))));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("qcEntryStartDate", getForceEntryDate(cleanString(ssaCountry.getQcEntryStartDate()))));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("qcEntryEndDate", getForceEntryDate(cleanString(ssaCountry.getQcEntryEndDate()))));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("centerOfSpeclizn", cleanString(ssaCountry.getCos())));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("totalizatnCountry", "yes".equalsIgnoreCase(cleanString(ssaCountry.getTotalizationCountry())) ? "BOASYN001" : "BOASYN002"));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("ssaLink", cleanString(ssaCountry.getSsaLink())));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("statusOfAgreement", getStatusOfAgreementCode(ssaCountry.getStatusOfAgreement())));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("isProtectiveDate", ssaCountry.getIsPositive() != null &&"Yes".equalsIgnoreCase(ssaCountry.getIsPositive().trim()) ? "BOASYN001" :"BOASYN002"));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("ssaEndDate", ""));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("name", cleanString(ssaCountry.getName())));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("eventType", "SSACTE01"));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("comments", ""));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("createdBy", "alice"));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("createdOn", "2023-02-16"));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("lastUpdatedBy", "alice"));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("lastUpdatedOn", "2023-02-16-15.36.36"));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("versionNo", "1"));
            bdmExternalPartyHistoryRow.getAttribute().add(getAttribute("lastWritten", "2023-02-16-15.36.36"));
            bdmExternalPartyHistory.getRow().add(bdmExternalPartyHistoryRow);
//            (EXTPARTYHISTORYID,CONCERNROLEID,FORCEENTRYDATE,REVISEDAGRMNTDATE,QCENTRYSTARTDATE,QCENTRYENDDATE,TOTALIZATNCOUNTRY,SSALINK,STATUSOFAGREEMENT,
//                    ISPROTECTIVEDATE,SSAENDDATE,NAME,EVENTTYPE,COMMENTS,CENTEROFSPECLIZN,CREATEDBY,CREATEDON,LASTUPDATEDBY,LASTUPDATEDON,VERSIONNO,LASTWRITTEN)
            System.out.println(String.format(sqlBDMExternalPartyHistory, externalPartyHistoryId, concernRoleId, getForceEntryDate(cleanString(ssaCountry.getForceEntryDate())),
                    getForceEntryDate(cleanString(ssaCountry.getRevisedAgreementDate())),
                    getForceEntryDate(cleanString(ssaCountry.getQcEntryStartDate())),
                    getForceEntryDate(cleanString(ssaCountry.getQcEntryEndDate())),
                    "yes".equalsIgnoreCase(cleanString(ssaCountry.getTotalizationCountry())) ? "BOASYN001" : "BOASYN002",
                    sqlEscape(cleanString(ssaCountry.getSsaLink())),
                    getStatusOfAgreementCode(ssaCountry.getStatusOfAgreement()),
                    ssaCountry.getIsPositive() != null &&"Yes".equalsIgnoreCase(ssaCountry.getIsPositive().trim()) ? "BOASYN001" :"BOASYN002",
                    sqlEscape(cleanString(ssaCountry.getName())),
                    sqlEscape(cleanString(ssaCountry.getCos()))

                    ));

            if(!existingCountriesMap.containsKey(ssaCountry.getName().toLowerCase().trim())) {
                Row concernRoleAlternateIdRow = new Row();
                concernRoleAlternateId++;
                concernRoleAlternateIdRow.getAttribute().add(getAttribute("concernRoleID", String.valueOf(concernRoleId)));
                concernRoleAlternateIdRow.getAttribute().add(getAttribute("alternateID", String.valueOf(alternateId)));
                concernRoleAlternateIdRow.getAttribute().add(getAttribute("typeCode", "CA7"));
                concernRoleAlternateIdRow.getAttribute().add(getAttribute("startDate", "2023-02-16"));
                concernRoleAlternateIdRow.getAttribute().add(getAttribute("endDate", ""));
                concernRoleAlternateIdRow.getAttribute().add(getAttribute("statusCode", "RST1"));
                concernRoleAlternateIdRow.getAttribute().add(getAttribute("concernRoleAlternateID", String.valueOf(concernRoleAlternateId)));
                concernRoleAlternateIdRow.getAttribute().add(getAttribute("comments", ""));
                concernRoleAlternateIdRow.getAttribute().add(getAttribute("versionNo", "1"));
                concernRoleAlternateIdRow.getAttribute().add(getAttribute("lastWritten", "2023-02-16-11.52.19"));
                concernRoleAlternateIdList.getRow().add(concernRoleAlternateIdRow);


//            System.out.println(String.format(sqlConcernRoleAlternateId, concernRoleId, alternateId, concernRoleAlternateId));

                Row concernRoleAddressRow = new Row();
                concernRoleAddressRow.getAttribute().add(getAttribute("concernRoleAddressID", String.valueOf(concernRoleAddressId++)));
                concernRoleAddressRow.getAttribute().add(getAttribute("concernRoleID", String.valueOf(concernRoleId)));
                concernRoleAddressRow.getAttribute().add(getAttribute("addressID", String.valueOf(ssaAddressId)));
                concernRoleAddressRow.getAttribute().add(getAttribute("typeCode", "typeCode"));
                concernRoleAddressRow.getAttribute().add(getAttribute("startDate", "2023-02-16"));
                concernRoleAddressRow.getAttribute().add(getAttribute("endDate", ""));
                concernRoleAddressRow.getAttribute().add(getAttribute("statusCode", ""));
                concernRoleAddressRow.getAttribute().add(getAttribute("comments", ""));
                concernRoleAddressRow.getAttribute().add(getAttribute("versionNo", "1"));
                concernRoleAddressRow.getAttribute().add(getAttribute("lastWritten", "2023-02-16-11.52.19"));
                concernRoleAddressList.getRow().add(concernRoleAddressRow);
            }


//            System.out.println(String.format(sqlConcernRoleAddress, concernRoleAddressId, concernRoleId, addressId));

            countryMap.put(ssaCountry.getName().replaceAll("\n", "").toLowerCase().trim(), String.valueOf(concernRoleId));
        }

        XmlMapper xmlMapper = new XmlMapper();
        xmlMapper.enable(SerializationFeature.INDENT_OUTPUT);
        xmlMapper.writeValue(new File("target/ssaConcern.dmx"),
                concern);
        xmlMapper.writeValue(new File("target/ssaAddress.dmx"),
                addresses);

        xmlMapper.writeValue(new File("target/ssaAddressElement.dmx"),
                addressesElement);
        xmlMapper.writeValue(new File("target/ssaConcernRole.dmx"),
                concernRole);

        xmlMapper.writeValue(new File("target/ssaExternalParty.dmx"),
                externalParty);

        xmlMapper.writeValue(new File("target/ssaBdmExternalParty.dmx"),
                bdmExternalParty);

        xmlMapper.writeValue(new File("target/ssaBdmExternalPartyHistory.dmx"),
                bdmExternalPartyHistory);

        xmlMapper.writeValue(new File("target/ssaConcernRoleAlternateId.dmx"),
                concernRoleAlternateIdList);

        xmlMapper.writeValue(new File("target/ssaConcernRoleAddress.dmx"),
                concernRoleAddressList);

        File foFile = new File("C:/dev/foreignofficesLatest.xlsx");
        List<ForeignOffice> foreignOfficeList = Poiji.fromExcel(foFile, ForeignOffice.class);

        for (ForeignOffice foreignOffice : foreignOfficeList) {
            Row foreignOfficeRow = new Row();
            int foreignOfficeAddressId = addressId++;
            externalPartyOfficeId++;
            foreignOfficeRow.getAttribute().add(getAttribute("externalPartyOfficeID", String.valueOf(externalPartyOfficeId)));
            foreignOfficeRow.getAttribute().add(getAttribute("concernRoleID", countryMap.get(cleanString(foreignOffice.getCountry().toLowerCase()))));
            foreignOfficeRow.getAttribute().add(getAttribute("name", cleanString(foreignOffice.getName())));
            foreignOfficeRow.getAttribute().add(getAttribute("type", "OT2"));
            foreignOfficeRow.getAttribute().add(getAttribute("startDate", "2023-02-16"));
            foreignOfficeRow.getAttribute().add(getAttribute("endDate", ""));
            foreignOfficeRow.getAttribute().add(getAttribute("serviceOffered", ""));
            foreignOfficeRow.getAttribute().add(getAttribute("primaryAddressID", String.valueOf(addressId)));
            foreignOfficeRow.getAttribute().add(getAttribute("primaryPhoneNumberID", ""));
            foreignOfficeRow.getAttribute().add(getAttribute("recordStatus", "RST1"));
            foreignOfficeRow.getAttribute().add(getAttribute("versionNo", "1"));
            externalPartyOffice.getRow().add(foreignOfficeRow);

//            System.out.println(String.format(sqlExternalPartyOffice, externalPartyOfficeId,
//                    sqlEscape(countryMap.get(cleanString(foreignOffice.getCountry().toLowerCase()))),
//                    sqlEscape(cleanString(foreignOffice.getName())),
//                    addressId));

            Row foAddressRow = new Row();
            foAddressRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            foAddressRow.getAttribute().add(getAttribute("COUNTRYCODE", cleanString(foreignOffice.getCountryCode())));
            foAddressRow.getAttribute().add(getAttribute("MODIFIABLEIND", "1"));
            foAddressRow.getAttribute().add(getAttribute("ADDRESSDATA",
                    getDmxAddressData(addressId, cleanString(foreignOffice.getZip()), cleanString(foreignOffice.getAptNum()), cleanString(foreignOffice.getPoBox()),
                            cleanString(foreignOffice.getStreet1()), cleanString(foreignOffice.getStreet2()), cleanString(foreignOffice.getCity()), cleanString(foreignOffice.getState()), cleanString(foreignOffice.getCountryCode()))));
            foAddressRow.getAttribute().add(getAttribute("ADDRESSLAYOUTTYPE", "BDMINTL"));
            foAddressRow.getAttribute().add(getAttribute("GEOCODE", ""));
            foAddressRow.getAttribute().add(getAttribute("LATITUDE", ""));
            foAddressRow.getAttribute().add(getAttribute("LONGITUDE", ""));
            foAddressRow.getAttribute().add(getAttribute("VERSIONNO", "1"));
            foAddresses.getRow().add(foAddressRow);

//            System.out.println(String.format(sqlAddress, addressId, sqlEscape(cleanString(foreignOffice.getCountryCode())), getAddressData(addressId, sqlEscape(cleanString(foreignOffice.getZip())), sqlEscape(cleanString(foreignOffice.getAptNum())), sqlEscape(cleanString(foreignOffice.getPoBox())),
//                    sqlEscape(cleanString(foreignOffice.getStreet1())), sqlEscape(cleanString(foreignOffice.getStreet2())), sqlEscape(cleanString(foreignOffice.getCity())), sqlEscape(cleanString(foreignOffice.getState())), sqlEscape(cleanString(foreignOffice.getCountryCode())))));

            Row addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "COUNTRY"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(foreignOffice.getCountryCode())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(foreignOffice.getCountryCode()).toUpperCase()));
            foAddressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "COUNTRY", sqlEscape(foreignOffice.getCountryCode()), sqlEscape(foreignOffice.getCountryCode())));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "POSTCODE"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", ""));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", ""));
            foAddressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "POSTCODE", "", ""));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "ZIP"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", ""));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", ""));
            foAddressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "ZIP", "", ""));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "BDMZIPX"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(foreignOffice.getZip())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(foreignOffice.getZip()).toUpperCase()));
            foAddressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "BDMZIPX", cleanString(foreignOffice.getZip()), cleanString(foreignOffice.getZip()).toUpperCase()));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "BDMSTPROVX"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(foreignOffice.getState())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(foreignOffice.getState()).toUpperCase()));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "BDMSTPROVX", sqlEscape(cleanString(foreignOffice.getState())), sqlEscape(cleanString(foreignOffice.getState())).toUpperCase()));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "APT"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(foreignOffice.getAptNum())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(foreignOffice.getAptNum()).toUpperCase()));
            foAddressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "APT",  sqlEscape(cleanString(foreignOffice.getAptNum())), sqlEscape(cleanString(foreignOffice.getAptNum()))));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "POBOXNO"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(foreignOffice.getPoBox())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(foreignOffice.getPoBox()).toUpperCase()));
            foAddressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "POBOXNO", sqlEscape(cleanString(foreignOffice.getPoBox())),
//                    sqlEscape(cleanString(foreignOffice.getPoBox())).toUpperCase()));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "ADD1"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(foreignOffice.getStreet1())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(foreignOffice.getStreet1()).toUpperCase()));
            foAddressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "ADD1", sqlEscape(cleanString(foreignOffice.getStreet1())), sqlEscape(cleanString(foreignOffice.getStreet1())).toUpperCase()));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "ADD2"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(foreignOffice.getStreet2())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(foreignOffice.getStreet2()).toUpperCase()));
            foAddressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "ADD2", sqlEscape(cleanString(foreignOffice.getStreet2())),
//                    cleanString(foreignOffice.getStreet2()).toUpperCase()));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "CITY"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", cleanString(foreignOffice.getCity())));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", cleanString(foreignOffice.getCity()).toUpperCase()));
            foAddressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "CITY", sqlEscape(cleanString(foreignOffice.getCity())),
//                    sqlEscape(cleanString(foreignOffice.getCity())).toUpperCase()));

            addressElementRow = new Row();
            addressElementId++;
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "PROV"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", ""));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", ""));
            foAddressesElement.getRow().add(addressElementRow);
//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "PROV", "", ""));

            Row externalPartyOfficeAddressRow = new Row();
            officeAddressId++;
            externalPartyOfficeAddressRow.getAttribute().add(getAttribute("OFFICEADDRESSID", String.valueOf(officeAddressId)));
            externalPartyOfficeAddressRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            externalPartyOfficeAddressRow.getAttribute().add(getAttribute("TYPE", "AT4"));
            externalPartyOfficeAddressRow.getAttribute().add(getAttribute("EXTERNALPARTYOFFICEID", String.valueOf(externalPartyOfficeId)));
            externalPartyOfficeAddressRow.getAttribute().add(getAttribute("STARTDATE", "2023-02-16"));
            externalPartyOfficeAddressRow.getAttribute().add(getAttribute("ENDDATE", ""));
            externalPartyOfficeAddressRow.getAttribute().add(getAttribute("RECORDSTATUS", "RST1"));
            externalPartyOfficeAddressRow.getAttribute().add(getAttribute("COMMENTS", cleanString(foreignOffice.getComments())));
            externalPartyOfficeAddressRow.getAttribute().add(getAttribute("VERSIONNO", "1"));
            externalPartyOfficeAddress.getRow().add(externalPartyOfficeAddressRow);

//            System.out.println(String.format(sqlExternalPartyOfficeAddress, officeAddressId, addressId, externalPartyOfficeId,cleanString(foreignOffice.getComments())));


        }
        xmlMapper.writeValue(new File("target/foreignOffice.dmx"),
                externalPartyOffice);
        xmlMapper.writeValue(new File("target/foreignOfficeAddress.dmx"),
                foAddresses);
        xmlMapper.writeValue(new File("target/foreignOfficeAddressElement.dmx"),
                foAddressesElement);

        xmlMapper.writeValue(new File("target/externalPartyOfficeAddress.dmx"),
                externalPartyOfficeAddress);


    }

    @Data
    @AllArgsConstructor
    class ExsitingSSACountry {
        int concernRoleId;
        int addressId;
    }


    private Attribute getAttribute(String name, String value) {
        Attribute attribute = new Attribute();
        attribute.setName(name);
        attribute.setValue(value);
        return attribute;
    }

    private String getAddressData(int addressId, String postalCode, String aptNo, String poBox, String add1, String add2, String city, String prov, String countryCode) {
        return String.format("'1'||chr(10)||'%s'||chr(10)||'BDMINTL'||chr(10)||'CA'||chr(10)||'1'||chr(10)||'1'\n" +
                        "                           || chr(10)||'COUNTRY=%s'||chr(10)||'POSTCODE='||chr(10)||'ZIP='||chr(10)||\n" +
                        "                           'BDMZIPX=%s'||chr(10)||'APT=%s'||chr(10)||'POBOXNO=%s'||chr(10)||'ADD1=%s'||chr(10)||\n" +
                        "                           'ADD2=%s'||chr(10)||'CITY=%s'||chr(10)||'PROV='||chr(10)||\n" +
                        "                           'STATEPROV='||chr(10)||'BDMSTPROVX=%s'||chr(10)||'BDMUNPARSE='",
                addressId,
                countryCode,
                postalCode,
                aptNo == null ? "" : aptNo,
                poBox != null ? poBox.replace("'", "''").replaceAll(" ", "") : "",
                add1 != null ? add1.replace("'", "''").replaceAll(" ", "") : "",
                add2 != null ? add2.replace("'", "''").replaceAll(" ", "") : "",
                city != null ? city.replace("'", "''").replaceAll(" ", "") : "",
                prov != null ? prov.replace("'", "''").replaceAll(" ", "") : "");
    }

    private String getDmxAddressData(int addressId, String postalCode, String aptNo, String poBox, String add1, String add2, String city, String prov, String countryCode) {
        return String.format("1\n" +
                        "%s\n" +
                        "BDMINTL\n" +
                        "CA\n" +
                        "1\n" +
                        "1\n" +
                        "POBOXNO=%s\n" +
                        "APT=%s\n" +
                        "ADD1=%s\n" +
                        "ADD2=%s\n" +
                        "CITY=%s\n" +
                        "PROV=\n" +
                        "STATEPROV=\n" +
                        "BDMSTPROVX=%s\n" +
                        "COUNTRY=AF\n" +
                        "POSTCODE=\n" +
                        "ZIP=\n" +
                        "BDMZIPX=\n" +
                        "BDMUNPARSE=\n"
                , addressId,
                aptNo == null ? "" : aptNo,
                poBox != null ? poBox.replace("'", "''").replaceAll(" ", "") : "",
                add1 != null ? add1.replace("'", "''").replaceAll(" ", "") : "",
                add2 != null ? add2.replace("'", "''").replaceAll(" ", "") : "",
                city != null ? city.replace("'", "''").replaceAll(" ", "") : "",
                prov, countryCode, postalCode);
    }

    private String cleanString(String s) {
        return s != null ? s.replaceAll(" ", "")
                .replaceAll(" ", "")
                .replaceAll("\n", "")
                .trim() : "";
    }

    private String sqlEscape(String s) {
        return s == null ? "" : s.replaceAll("'", "''");
    }

    private String getAddressFromLocation(SSACountry ssaCountry) {
//        if((ssaCountry.getPoBox() == null || "".equals(ssaCountry.getPoBox())) &&
//                (ssaCountry.getStreet1() == null || "".equals(ssaCountry.getStreet1())) &&
//                (ssaCountry.getStreet2() == null || "".equals(ssaCountry.getStreet2()))){
//            return ssaCountry.getLocation();
//        }
        return ssaCountry.getStreet1() != null ? ssaCountry.getStreet1().replace("'", "''").replaceAll(" ", "") : "";
    }

    private String getForceEntryDate(String date) {
        if (date == null || "".equals(date.trim())) {
            return "";
        }
        String day = date.substring(0, date.indexOf("-"));
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy", Locale.ENGLISH);
        SimpleDateFormat outputFormatter = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
        try {
            Date ssaDate = formatter.parse(day.length() < 2 ? "0".concat(date) : date);

            return outputFormatter.format(ssaDate);

        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

    }

    private String getStatusOfAgreementCode(String value) {
        if ("In Force".equalsIgnoreCase(value)) {
            return "IN";
        } else if ("Not in Force".equalsIgnoreCase(value)) {
            return "NIF";
        } else if ("Information Only".equalsIgnoreCase(value)) {
            return "IFO";
        } else {
            return "IN";
        }
    }
}
