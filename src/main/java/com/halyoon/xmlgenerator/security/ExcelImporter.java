package com.halyoon.xmlgenerator.security;

import com.poiji.annotation.ExcelCellName;
import com.poiji.annotation.ExcelRow;
import lombok.Data;

@Data
public class ExcelImporter {

    @ExcelRow
    private int rowIndex;
    @ExcelCellName("Location")
    private String location;

    @ExcelCellName("Public Office Indicator")
    private String publicOfficeIndicator;

    @ExcelCellName("Type")
    private String type;

    @ExcelCellName("Parent Location")
    private String parentLocation;

    @ExcelCellName("Creation Date")
    private String createDate;

    @ExcelCellName("Apt Number")
    private String apartmentNumber;

    @ExcelCellName("Street Number")
    private String streetNumber;

    @ExcelCellName("PO Box")
    private String poBox;

    @ExcelCellName("Street Name")
    private String StreetName;

    @ExcelCellName("City")
    private String city;

    @ExcelCellName("Province")
    private String province;

    @ExcelCellName("Postal Code")
    private String postalCode;

    @ExcelCellName("Country")
    private String country;

    @ExcelCellName("Location Type")
    private String locationType;

    @ExcelCellName("PROV")
    private String prov;

}
