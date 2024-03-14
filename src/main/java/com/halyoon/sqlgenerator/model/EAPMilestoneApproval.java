package com.halyoon.sqlgenerator.model;

import com.poiji.annotation.ExcelCellName;
import com.poiji.annotation.ExcelRow;
import lombok.Data;

@Data
public class EAPMilestoneApproval {

    @ExcelRow
    private int rowIndex;

    @ExcelCellName("EAP CASE REFERENCE NUMBER")
    private String refNumber;

    @ExcelCellName("CaMS OUTCOME CHECKPOINT REFERENCE #")
    private String checkpointRefNumber;

    @ExcelCellName("OUTCOME CHECKPOINT MILESTONE ACHIEVED FLAG")
    private String milestoneAchievedFlag;

    @ExcelCellName("CHECKPOINT TYPE Ex. 1month 3month, 6month, 12month")
    private String scheduleType;


}
