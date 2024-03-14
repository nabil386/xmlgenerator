package com.halyoon;

import com.halyoon.sqlgenerator.model.EAPApproval;
import com.halyoon.sqlgenerator.model.OutcomeExcel;
import com.poiji.bind.Poiji;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class EapPbfClosedCaseApprovalTest {
    @Test
    public void EapPbfClosedCaseApprovalExcelTest() throws IOException {

        String query ="update casereview set approvedby='IAAP117059', approveddatetime=to_date('%s','DD/MM/YYYY HH24:MI:SS'), approvalstatus='ARS1' where caseid = (select caseid from caseheader where casereference = %s) and casereviewreference = %s and reasoncode='%s';";

// EAP_PBF-Closed_Case_Approval_Revisions-2023-24-WCG_.xlsx
//        File file = new File("/Users/mac/workspaces/xmlgenerator/src/main/resources/EAP_Outcome_WCG_1.xlsx");
        File file = new File("/Users/mac/workspaces/xmlgenerator/src/main/resources/EAP_PBF-Closed_Case_Approval_Revisions-2023-24-WCG_.xlsx");
        List<EAPApproval> ssaCountryList = Poiji.fromExcel(file, EAPApproval.class);

        for(EAPApproval outcomeExcel : ssaCountryList) {
            System.out.println(String.format(query, outcomeExcel.getApprovedDate()+" 00:00:00", outcomeExcel.getRefNumber(), outcomeExcel.getCheckpointRefNumber(), getSchedulerType(outcomeExcel.getScheduleType())));

        }


    }

    private String getSchedulerType(String scheduleType) {
        return switch (scheduleType) {
            case "1" -> "CR14";
            case "3" -> "CR5";
            case "6" -> "CR6";
            case "12" -> "CR7";
            default -> "";
        };
    }
}
