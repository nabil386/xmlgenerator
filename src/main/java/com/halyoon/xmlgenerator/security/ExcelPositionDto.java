package com.halyoon.xmlgenerator.security;

import com.poiji.annotation.ExcelCellName;
import com.poiji.annotation.ExcelRow;
import lombok.Data;

@Data
public class ExcelPositionDto {

    @ExcelRow
    private int rowIndex;
    @ExcelCellName("Position Name")
    private String positionName;
}
