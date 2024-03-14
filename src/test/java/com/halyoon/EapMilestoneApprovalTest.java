package com.halyoon;

import com.halyoon.sqlgenerator.model.EAPApproval;
import com.halyoon.sqlgenerator.model.EAPMilestoneApproval;
import com.poiji.bind.Poiji;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class EapMilestoneApprovalTest {
    @Test
    public void EapMilestoneApprovalExcelTest() throws IOException {

        String query ="update CASEREVIEWINFO set EAPMILESTONEACHIEVEDIND = 1 where CASEREVIEWID = (select casereviewid from casereview where caseid = (select caseid from caseheader where casereference = %s) and casereviewreference = %s and reasoncode='%s');";

// EAP_PBF-Closed_Case_Approval_Revisions-2023-24-WCG_.xlsx
//        File file = new File("/Users/mac/workspaces/xmlgenerator/src/main/resources/EAP_Outcome_WCG_1.xlsx");
        File file = new File("/Users/mac/workspaces/xmlgenerator/src/main/resources/EAP_PBF-MilestoneAchievedRevisions-2023-24-Fedcap.xlsx");
        List<EAPMilestoneApproval> ssaCountryList = Poiji.fromExcel(file, EAPMilestoneApproval.class);

        for(EAPMilestoneApproval outcomeExcel : ssaCountryList) {
            System.out.println(String.format(query, outcomeExcel.getRefNumber(), outcomeExcel.getCheckpointRefNumber(), getSchedulerType(outcomeExcel.getScheduleType())));

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
