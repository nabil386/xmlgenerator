package com.halyoon.sqlgenerator.model;

import com.poiji.annotation.ExcelCellName;
import com.poiji.annotation.ExcelRow;
import lombok.Data;

@Data
public class Users {

    @ExcelRow
    private int rowIndex;

    @ExcelCellName("USERNAME")
    private String username;

}
