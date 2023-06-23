package com.halyoon.xmlgenerator.security.securitygroupsid;

import com.poiji.annotation.ExcelCellName;
import lombok.Data;

@Data
public class RationaleDto {

    @ExcelCellName("PLANNEDITEMID")
    private String plannedItemId;

    @ExcelCellName("CASEWORKER")
    private String caseworker;

    @ExcelCellName("CASEWORKERFULLNAME")
    private String caseworkerFullName;

    @ExcelCellName("RATIONALETXT")
    private String rationaleText;

    @ExcelCellName("CASEID")
    private String caseId;

    @ExcelCellName("NAME")
    private String name;

    @ExcelCellName("USERNAME")
    private String username;

}
