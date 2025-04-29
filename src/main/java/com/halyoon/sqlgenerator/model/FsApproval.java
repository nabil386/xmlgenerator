package com.halyoon.sqlgenerator.model;

import com.poiji.annotation.ExcelCellName;
import com.poiji.annotation.ExcelRow;
import lombok.Data;

@Data
public class FsApproval {

    @ExcelRow
    private int rowIndex;

    @ExcelCellName("EAP PLAN ITEM REFERENCE #")
    private String refNumber;

    @ExcelCellName("APPROVED BY")
    private String approvedBy;

    @ExcelCellName("DATE APPROVED dd/mm/yyyy")
    private String approvedDate;

}
