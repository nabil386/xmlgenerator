package com.halyoon.xmlgenerator;

import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import com.halyoon.xmlgenerator.pojo.Attribute;

import com.halyoon.xmlgenerator.pojo.Row;
import com.halyoon.xmlgenerator.security.ExcelImporter;
import com.halyoon.xmlgenerator.security.ExcelPositionDto;
import com.halyoon.xmlgenerator.security.securitygroupsid.SecurityGroupSid;
import com.poiji.bind.Poiji;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertNotNull;

public class ExcelImporterTest {

    @Test
    public void importExcelTest() throws IOException {
        File file = new File("C:/dev/locationToExcel.xlsx");
        List<ExcelImporter> locationList = Poiji.fromExcel(file, ExcelImporter.class);
        SecurityGroupSid locations = new SecurityGroupSid();
        SecurityGroupSid addresses = new SecurityGroupSid();
        SecurityGroupSid addressesElement = new SecurityGroupSid();
        int locationId = 80052;
        int addressId = 80061;
        int addressElementId = 80744;
        String sqlLocation = "Insert into LOCATION (LOCATIONID,NAME,ADDRESSID,DESCRIPTION,STATUSCODE,LOCATIONSTATUS,CREATIONDATE,LOCATIONTYPE,PARENTLOCATIONID,ORGANISATIONID,ADDRESSCOMMENTS,CREATELOCATIONSID,MAINTAINSID,READSID,LOCATIONSTRUCTUREID,PUBLICOFFICEINDICATOR,PHONENUMBERID,FAXNUMBERID,EMAILADDRESSID,ROOTLOCATIONINDICATOR,UPPERNAME,VERSIONNO) values (%s,'%s',%s,'%s','RST1','LS1',to_date('00-01-01','RR-MM-DD'),'%s',null,1,null,null,null,null,1,'0',null,null,null,'1',null,1);";
        String sqlAddress = "Insert into ADDRESS (ADDRESSID,COUNTRYCODE,MODIFIABLEIND,ADDRESSDATA,ADDRESSLAYOUTTYPE,GEOCODE,LATITUDE,LONGITUDE,VERSIONNO,LASTWRITTEN) values (%s,'CA','1',%s,'BDMINTL',null,0,0,1,to_date('22-09-15','RR-MM-DD'));";
        String sqlAddressUpdate = "update ADDRESS set addressData = %s where addressID = %s;";
        String sqlAddressElement = "Insert into ADDRESSELEMENT (ADDRESSELEMENTID,ADDRESSID,ELEMENTTYPE,ELEMENTVALUE,UPPERELEMENTVALUE) values (%s,%s,'%s','%s','%s');";
        String addressElementFields[] = {"COUNTRY", "POSTCODE", "ZIP", "BDMZIPX", "APT", "POBOXNO", "ADD1", "ADD2", "CITY", "PROV", "STATEPROV", "BDMSTPROVX"};
        for (ExcelImporter excelImporter : locationList) {

            Row locationRow = new Row();
            locationRow.getAttribute().add(getAttribute("LOCATIONID", String.valueOf(locationId++)));
            locationRow.getAttribute().add(getAttribute("NAME", excelImporter.getLocation()));
            locationRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId++)));
            locationRow.getAttribute().add(getAttribute("DESCRIPTION",excelImporter.getLocation()));
            locationRow.getAttribute().add(getAttribute("PARENTLOCATIONID", ""));
            locationRow.getAttribute().add(getAttribute("LOCATIONTYPE", "LT1"));
            locationRow.getAttribute().add(getAttribute("STATUSCODE", "RST1"));
            locationRow.getAttribute().add(getAttribute("LOCATIONSTATUS", "LS1"));
            locationRow.getAttribute().add(getAttribute("CREATIONDATE", "1900-01-01-00.00.00"));
            locationRow.getAttribute().add(getAttribute("VERSIONNO", "1"));
            locationRow.getAttribute().add(getAttribute("ORGANISATIONID", "1"));
            locationRow.getAttribute().add(getAttribute("PUBLICOFFICEINDICATOR", "No".equalsIgnoreCase(excelImporter.getPublicOfficeIndicator()) ? "0" : "1"));
            locationRow.getAttribute().add(getAttribute("ROOTLOCATIONINDICATOR", "1"));
            locationRow.getAttribute().add(getAttribute("LOCATIONSTRUCTUREID", "1"));

//            System.out.println(String.format(sqlLocation, locationId, excelImporter.getLocation(), addressId, excelImporter.getLocation(), "TL1"));
            locations.getRow().add(locationRow);

            Row addressRow = new Row();
            addressRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressRow.getAttribute().add(getAttribute("COUNTRYCODE", "CA"));
            addressRow.getAttribute().add(getAttribute("MODIFIABLEIND", "1"));
            addressRow.getAttribute().add(getAttribute("ADDRESSDATA",
                    getAddressData(addressId, excelImporter.getPostalCode(), excelImporter.getApartmentNumber(), excelImporter.getPoBox(),
                            excelImporter.getStreetNumber(), excelImporter.getStreetName(), excelImporter.getCity(), excelImporter.getProv(), excelImporter)));
            addressRow.getAttribute().add(getAttribute("ADDRESSLAYOUTTYPE", "BDMINTL"));
            addressRow.getAttribute().add(getAttribute("GEOCODE", ""));
            addressRow.getAttribute().add(getAttribute("LATITUDE", ""));
            addressRow.getAttribute().add(getAttribute("LONGITUDE", ""));
            addressRow.getAttribute().add(getAttribute("VERSIONNO", "1"));

//            System.out.println(String.format(sqlAddress, addressId, getAddressData(addressId, excelImporter.getPostalCode(), excelImporter.getApartmentNumber(), excelImporter.getPoBox(),
//                    excelImporter.getStreetNumber(), excelImporter.getStreetName(), excelImporter.getCity(), excelImporter.getProv(), excelImporter)));
            System.out.println(String.format(sqlAddressUpdate, getAddressData(addressId, excelImporter.getPostalCode(), excelImporter.getApartmentNumber(), excelImporter.getPoBox(),
                    excelImporter.getStreetNumber(), excelImporter.getStreetName(), excelImporter.getCity(), excelImporter.getProv(), excelImporter), addressId));

            addresses.getRow().add(addressRow);

            Row addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId++)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "COUNTRY"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", "CA"));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", "CA"));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "COUNTRY", "CA", "CA"));

            addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId++)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "POSTCODE"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", excelImporter.getPostalCode()));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", excelImporter.getPostalCode() == null ? "" : excelImporter.getPostalCode().toUpperCase()));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "POSTCODE",
//                    excelImporter.getPostalCode(), excelImporter.getPostalCode() == null ? "" : excelImporter.getPostalCode().toUpperCase()));

            addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId++)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "ZIP"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", ""));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", ""));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "ZIP", "", ""));

            addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId++)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "BDMZIPX"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", ""));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", ""));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "BDMZIPX", "", ""));

            addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId++)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "APT"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE",
                    excelImporter.getApartmentNumber() == null ? "" : excelImporter.getApartmentNumber().replace("'", "''")));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE",
                    excelImporter.getApartmentNumber() == null ? "" : excelImporter.getApartmentNumber().toUpperCase()));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "APT",  excelImporter.getApartmentNumber() == null ? "" : excelImporter.getApartmentNumber().replace("'", "''"),
//                    excelImporter.getApartmentNumber() == null ? "" : excelImporter.getApartmentNumber().toUpperCase().replace("'", "''")));

            addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId++)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "POBOXNO"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE",
                    excelImporter.getPoBox() != null ? excelImporter.getPoBox().replace("'", "''") : excelImporter.getPoBox()));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE",
                    excelImporter.getPoBox() == null ? "" : excelImporter.getPoBox().toUpperCase().replace("'", "''")));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "POBOXNO", excelImporter.getPoBox() == null ? "" : excelImporter.getPoBox().replace("'", "''"),
//                    excelImporter.getPoBox() == null ? "" : excelImporter.getPoBox().toUpperCase().replace("'", "''")));

            addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId++)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "ADD1"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE",
                    getAddressFromLocation(excelImporter) != null ? getAddressFromLocation(excelImporter).replace("'", "''") : getAddressFromLocation(excelImporter)));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE",
                    getAddressFromLocation(excelImporter) == null ? "" : getAddressFromLocation(excelImporter).toUpperCase().replace(",", "''")));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "ADD1", getAddressFromLocation(excelImporter) == null ? "" : getAddressFromLocation(excelImporter).replace("'", "''"),
//                    getAddressFromLocation(excelImporter) == null ? "" : getAddressFromLocation(excelImporter).toUpperCase().replace("'", "''")));

            addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId++)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "ADD2"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", excelImporter.getStreetName() != null ? excelImporter.getStreetName().replace("'", "''") : excelImporter.getStreetName()));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE",
                    excelImporter.getStreetName() == null ? "" : excelImporter.getStreetName().toUpperCase().replace(",", "''")));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "ADD2", excelImporter.getStreetName() == null ? "" : excelImporter.getStreetName().replace(",", "''"),
//                    excelImporter.getStreetName() == null ? "" : excelImporter.getStreetName().toUpperCase().replace(",", "''")));

            addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId++)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "CITY"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE",
                    excelImporter.getCity() != null ? excelImporter.getCity().replace("'", "''") : excelImporter.getCity()));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE",
                    excelImporter.getCity() == null ? "" : excelImporter.getCity().toUpperCase().replace("'", "''")));
            addressesElement.getRow().add(addressElementRow);

//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "CITY", excelImporter.getCity() == null ? "" : excelImporter.getCity().replace("'", "''"),
//                    excelImporter.getCity() == null ? "" : excelImporter.getCity().toUpperCase().replace("'", "''")));

            addressElementRow = new Row();
            addressElementRow.getAttribute().add(getAttribute("ADDRESSELEMENTID", String.valueOf(addressElementId++)));
            addressElementRow.getAttribute().add(getAttribute("ADDRESSID", String.valueOf(addressId)));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTTYPE", "PROV"));
            addressElementRow.getAttribute().add(getAttribute("ELEMENTVALUE", excelImporter.getProv()));
            addressElementRow.getAttribute().add(getAttribute("UPPERELEMENTVALUE", excelImporter.getProv() == null ? "" : excelImporter.getProv().toUpperCase()));
            addressesElement.getRow().add(addressElementRow);
//            System.out.println(String.format(sqlAddressElement, addressElementId, addressId, "PROV", excelImporter.getProv(), excelImporter.getProv() == null ? "" : excelImporter.getProv().toUpperCase()));
        }
        XmlMapper xmlMapper = new XmlMapper();
        xmlMapper.enable(SerializationFeature.INDENT_OUTPUT);
        xmlMapper.writeValue(new File("target/location.dmx"),
                locations);
        xmlMapper.writeValue(new File("target/address.dmx"),
                addresses);

        xmlMapper.writeValue(new File("target/addressElement.dmx"),
                addressesElement);

        assertNotNull(locationList);
    }

    @Test
    public void importPositionsTest() throws IOException {
        File file = new File("C:/dev/positionsToExcel.xlsx");
        List<ExcelPositionDto> positionList = Poiji.fromExcel(file, ExcelPositionDto.class);
        SecurityGroupSid positions = new SecurityGroupSid();
        String sqlPostion = "Insert into POSITION (POSITIONID,NAME,COMMENTS,LEADPOSITIONIND,JOBID,FROMDATE,TODATE,RECORDSTATUS,UPPERNAME,VERSIONNO,LASTWRITTEN) values (%s,'%s','%s','1',80000,to_date('00-01-01','RR-MM-DD'),null,'RST1',null,1,null);";
        int positionId = 80564;
        for(ExcelPositionDto position : positionList){
            Row positionRow = new Row();
            positionRow.getAttribute().add(getAttribute("POSITIONID", String.valueOf(positionId++)));
            positionRow.getAttribute().add(getAttribute("NAME", position.getPositionName()));
            positionRow.getAttribute().add(getAttribute("COMMENTS", position.getPositionName()));
            positionRow.getAttribute().add(getAttribute("LEADPOSITIONIND", "1"));
            positionRow.getAttribute().add(getAttribute("JOBID", "80000"));
            positionRow.getAttribute().add(getAttribute("FROMDATE", "1900-01-01-00.00.00"));
            positionRow.getAttribute().add(getAttribute("TODATE", ""));
            positionRow.getAttribute().add(getAttribute("RECORDSTATUS", "RST1"));
            positionRow.getAttribute().add(getAttribute("VERSIONNO", "1"));
            positions.getRow().add(positionRow);

            System.out.println(String.format(sqlPostion, positionId, position.getPositionName(), position.getPositionName()));
        }
        XmlMapper xmlMapper = new XmlMapper();
        xmlMapper.enable(SerializationFeature.INDENT_OUTPUT);
        xmlMapper.writeValue(new File("target/position.dmx"),
                positions);

    }

    private Attribute getAttribute(String name, String value){
        Attribute attribute = new Attribute();
        attribute.setName(name);
        attribute.setValue(value);
        return attribute;
    }
    public String getAddressData(int addressId, String postalCode, String aptNo, String poBox, String add1, String add2, String city, String prov, ExcelImporter excelImporter){
        return String.format("'1'||chr(10)||'%s'||chr(10)||'BDMINTL'||chr(10)||'CA'||chr(10)||'1'||chr(10)||'1'\n" +
                "                           || chr(10)||'COUNTRY=CA'||chr(10)||'POSTCODE=%s'||chr(10)||'ZIP='||chr(10)||\n" +
                "                           'BDMZIPX='||chr(10)||'APT=%s'||chr(10)||'POBOXNO=%s'||chr(10)||'ADD1=%s'||chr(10)||\n" +
                "                           'ADD2=%s'||chr(10)||'CITY=%s'||chr(10)||'PROV=%s'||chr(10)||\n" +
                "                           'STATEPROV='||chr(10)||'BDMSTPROVX='||chr(10)||'BDMUNPARSE='",
                addressId,
                postalCode,
                aptNo == null ? "" : aptNo,
                poBox != null ? poBox.replace("'", "''") : "",
                getAddressFromLocation(excelImporter),
                add2 != null ? add2.replace("'", "''") : "",
                city != null ? city.replace("'", "''") : "",
                prov);
    }

    private String getAddressFromLocation(ExcelImporter excelImporter){
        if((excelImporter.getPoBox() == null || "".equals(excelImporter.getPoBox())) &&
                (excelImporter.getStreetNumber() == null || "".equals(excelImporter.getStreetNumber())) &&
                (excelImporter.getStreetName() == null || "".equals(excelImporter.getStreetName()))){
            return excelImporter.getLocation();
        }
        return excelImporter.getStreetNumber() != null ? excelImporter.getStreetNumber().replace("'", "''") : "";
    }
}
