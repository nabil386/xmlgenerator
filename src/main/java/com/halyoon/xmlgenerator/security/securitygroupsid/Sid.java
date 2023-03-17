package com.halyoon.xmlgenerator.security.securitygroupsid;

import com.poiji.annotation.ExcelCellName;
import lombok.Data;
@Data
public class Sid {

    @ExcelCellName("GROUPNAME")
    private String groupName;
    @ExcelCellName("SIDNAME")
    private String sidName;
    @ExcelCellName("LASTWRITTEN")
    private String lastWritten;
}
