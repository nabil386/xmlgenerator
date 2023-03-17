package com.halyoon.xmlgenerator.security.securitygroupsid;

import com.poiji.annotation.ExcelCellName;
import lombok.Data;

@Data
public class ForeignOffice {

    @ExcelCellName("Country")
    private String country;

    @ExcelCellName("CountryCode")
    private String countryCode;

    @ExcelCellName("Name (132 characters)")
    private String name;

    @ExcelCellName("PO Box/Rural Route/General Delivery")
    private String poBox;

    @ExcelCellName("Unit/Apt/Suite Number")
    private String aptNum;

    @ExcelCellName("Street 1")
    private String street1;

    @ExcelCellName("Street 2")
    private String street2;

    @ExcelCellName("City")
    private String city;
    @ExcelCellName("State/Province/Region")
    private String state;

    @ExcelCellName("Zip Code")
    private String zip;
    @ExcelCellName("Comments")
    private String comments;


}
