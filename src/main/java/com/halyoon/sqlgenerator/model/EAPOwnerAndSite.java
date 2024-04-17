package com.halyoon.sqlgenerator.model;

import com.poiji.annotation.ExcelCellName;
import com.poiji.annotation.ExcelRow;
import lombok.Data;

@Data
public class EAPOwnerAndSite {

    @ExcelRow
    private int rowIndex;

    @ExcelCellName("EAPNumber")
    private String eapReNumber;

    @ExcelCellName("IAAPNumber")
    private String IaaPNumber;

    @ExcelCellName("SiteCode")
    private String siteCode;

    @ExcelCellName("Region")
    private String region;
}
