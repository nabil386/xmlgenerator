package com.halyoon;

import com.halyoon.sqlgenerator.model.OutcomeExcel;
import com.poiji.bind.Poiji;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class OutcomeExcelTest {
    @Test
    public void ssaCountryExcelTest() throws IOException {
        String query ="update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('%s','DD/MM/YYYY HH24:MI:SS') where mtcueos.caseid = (select c.caseid from MTCUEAPOUTCOMESURVEY e join caseheader c on e.caseid = c.caseid and c.casereference =  %s);";
        String queryOneMonth = "update casereview cr set cr.SCHEDULEDSTARTDATE = to_date('%s','DD/MM/YYYY HH24:MI:SS') where cr.CASEID = (select c.caseid from MTCUEAPOUTCOMESURVEY e join caseheader c on e.caseid = c.caseid and c.casereference = %s) and cr.REASONCODE = 'CR14';";
        String queryThreeMonth = "update casereview cr set cr.SCHEDULEDSTARTDATE = to_date('%s','DD/MM/YYYY HH24:MI:SS') where cr.CASEID = (select c.caseid from MTCUEAPOUTCOMESURVEY e join caseheader c on e.caseid = c.caseid and c.casereference = %s) and cr.REASONCODE = 'CR5';";
        String querySixMonth = "update casereview cr set cr.SCHEDULEDSTARTDATE = to_date('%s','DD/MM/YYYY HH24:MI:SS') where cr.CASEID = (select c.caseid from MTCUEAPOUTCOMESURVEY e join caseheader c on e.caseid = c.caseid and c.casereference = %s) and cr.REASONCODE = 'CR6';";
        String queryTwelveMonth = "update casereview cr set cr.SCHEDULEDSTARTDATE = to_date('%s','DD/MM/YYYY HH24:MI:SS') where cr.CASEID = (select c.caseid from MTCUEAPOUTCOMESURVEY e join caseheader c on e.caseid = c.caseid and c.casereference = %s) and cr.REASONCODE = 'CR7';";

        File file = new File("/Users/mac/workspaces/xmlgenerator/src/main/resources/EAP_Outcome_WCG_1.xlsx");
        List<OutcomeExcel> ssaCountryList = Poiji.fromExcel(file, OutcomeExcel.class);

        for(OutcomeExcel outcomeExcel : ssaCountryList) {
            System.out.println(String.format(query, outcomeExcel.getNewOutcomeDate()+" 00:00:00", outcomeExcel.getRefNumber()));
            System.out.println(String.format(queryOneMonth, outcomeExcel.getScheduleDateOneMonth()+" 00:00:00", outcomeExcel.getRefNumber()));
            System.out.println(String.format(queryThreeMonth, outcomeExcel.getScheduleDateThreeMonth()+" 00:00:00", outcomeExcel.getRefNumber()));
            System.out.println(String.format(querySixMonth, outcomeExcel.getScheduleDateSixMonth()+" 00:00:00", outcomeExcel.getRefNumber()));
            System.out.println((String.format(queryTwelveMonth, outcomeExcel.getScheduleDateTwelveMonth()+" 00:00:00", outcomeExcel.getRefNumber())));
// 00:00:00
        }


    }
}
