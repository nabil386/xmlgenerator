package com.halyoon.xmlgenerator.security.securitygroupsid;

import com.poiji.annotation.ExcelCellName;
import lombok.Data;

import java.util.Date;

@Data
public class PBFDto {

    @ExcelCellName("C")
    private String checkpointRef;

    @ExcelCellName("F")
    private String approvalDate;

    @ExcelCellName("H")
    private String approvedBy;

}
