package com.halyoon;

import com.halyoon.sqlgenerator.model.EAPApproval;
import com.halyoon.sqlgenerator.model.FsApproval;
import com.poiji.bind.Poiji;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class EapFsClosedCaseApprovalTest {
    @Test
    public void EapPbfClosedCaseApprovalExcelTest() throws IOException {

        String query ="update planneditem set approvedby='IAAP117059', approveddatetime=to_date('%s','DD/MM/YYYY HH24:MI:SS') where planneditemreference = '%s';";


        File file = new File("/Users/mac/workspaces/xmlgenerator/src/main/resources/152310-4-Financial-Supports-information-missing-for-closed-cases-Serco(April 1st 2025).xlsx");
        List<FsApproval> ssaCountryList = Poiji.fromExcel(file, FsApproval.class);

        for(FsApproval outcomeExcel : ssaCountryList) {
            System.out.println(String.format(query, outcomeExcel.getApprovedDate()+" 00:00:00", outcomeExcel.getRefNumber()));

        }


    }

}
