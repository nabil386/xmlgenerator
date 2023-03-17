package com.halyoon.xmlgenerator.security.securitygroupsid;

import com.poiji.annotation.ExcelCellName;
import lombok.Data;

@Data
public class SSACountry {

    @ExcelCellName("Country")
    private String name;

    @ExcelCellName("CountryCode")
    private String countryCode;

    @ExcelCellName("Centre of Specialization (COS)")
    private String cos;

    @ExcelCellName("CAG")
    private String cag;
    @ExcelCellName("Date of Entry into Force")
    private String forceEntryDate;

    @ExcelCellName("Entry with Quebec (QC) End Date")
    private String qcEntryEndDate;

    @ExcelCellName("Status of Agreement")
    private String statusOfAgreement;

    @ExcelCellName("Totalization with 3rd Country")
    private String totalizationCountry;


    @ExcelCellName("Entry with Quebec (QC) Start Date")
    private String qcEntryStartDate;
    ;

    @ExcelCellName("Date of Revised Agreement")
    private String revisedAgreementDate;

    @ExcelCellName("Is Protective Date associated with this Country?")
    private String isPositive;
    @ExcelCellName("SSA link")
    private String ssaLink;
    @ExcelCellName("End Date")
    private String endDate;

    @ExcelCellName("Unit/Apt/Suite Number")
    private String aptNum;

    @ExcelCellName("PO Box/Rural Route/General Delivery")
    private String poBox;

    @ExcelCellName("Street 1")
    private String street1;

    @ExcelCellName("Street 2")
    private String street2;

    @ExcelCellName("City, Town or Village")
    private String city;

    @ExcelCellName("State/Province/Region")
    private String state;

    @ExcelCellName("Zip Code")
    private String zip;


}
