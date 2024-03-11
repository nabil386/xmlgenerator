package com.halyoon.sqlgenerator.model;

import com.poiji.annotation.ExcelCellName;
import com.poiji.annotation.ExcelRow;
import lombok.Data;

@Data
public class OutcomeExcel {

    @ExcelRow
    private int rowIndex;
    @ExcelCellName("EAP CASE REFERENCE NUMBER")
    private String refNumber;

    @ExcelCellName("EAP CASE STATUS")
    private String eapCaseStatus;

    @ExcelCellName("Checkpoint")
    private String checkpoint;

    @ExcelCellName("Checkpoint Ref. #")
    private String checkpointRefNumber;

    @ExcelCellName("CURRENT OUTCOME DATE dd/mm/yyyy")
    private String currentOucomeDate;

    @ExcelCellName("NEW OUTCOME DATE dd/mm/yyyy")
    private String newOutcomeDate;

    @ExcelCellName("NEW SCHEDULED DATE 1 MONTH")
    private String scheduleDateOneMonth;

    @ExcelCellName("NEW SCHEDULED DATE 3 MONTH")
    private String scheduleDateThreeMonth;

    @ExcelCellName("NEW SCHEDULED DATE 6 MONTH")
    private String scheduleDateSixMonth;

    @ExcelCellName("NEW SCHEDULED DATE 12 MONTH")
    private String scheduleDateTwelveMonth;

    




}
