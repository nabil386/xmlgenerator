package com.halyoon.sqlgenerator.model;

import com.poiji.annotation.ExcelCellName;
import com.poiji.annotation.ExcelRow;
import lombok.Data;

@Data
public class EAPApproval {

    @ExcelRow
    private int rowIndex;

    @ExcelCellName("EAP CASE REFERENCE NUMBER")
    private String refNumber;

    @ExcelCellName("SSM SUBMISSION STATUS2")
    private String submissionStatus;

    @ExcelCellName("CaMS OUTCOME CHECKPOINT REFERENCE #")
    private String checkpointRefNumber;

    @ExcelCellName("DATE APPROVED dd/mm/yyyy")
    private String approvedDate;

    @ExcelCellName("TYPE Ex. 1month 3month, 6month, 12month")
    private String scheduleType;


}
