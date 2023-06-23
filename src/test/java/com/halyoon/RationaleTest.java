package com.halyoon;

import com.halyoon.xmlgenerator.security.securitygroupsid.RationaleDto;
import com.poiji.bind.Poiji;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class RationaleTest {

    @Test
    public void rationaleTest() throws IOException {



//        INSERT INTO NOTE (NOTEID,SENSITIVITYCODE,NOTESTEXT,USERNAME,CREATIONDATETIME,PRIORITYCODE,SUBJECTTEXT,CASENOTETYPE) VALUES (2051553577758883840,'1','<notes displayAsDescending="yes" showtimezone="no"><note><date domain="SVR_DATETIME">20230623T103311</date><timeZone>Eastern Standard Time</timeZone><author username="IAAP113035">Martin Hanna</author><content>abcd 1</content></note></notes>','IAAP113035','2023-06-23 10:33:11','NP2','Employer - Job Accommodation','CNTYPE06')
        String sqlNote = "INSERT INTO NOTE (NOTEID,SENSITIVITYCODE,NOTESTEXT,USERNAME,CREATIONDATETIME,PRIORITYCODE,SUBJECTTEXT,CASENOTETYPE) VALUES (%s,'1','<notes displayAsDescending=\"yes\" showtimezone=\"no\"><note><date domain=\"SVR_DATETIME\">20230623T103311</date><timeZone>Eastern Standard Time</timeZone><author username=\"%s\">%s</author><content>%s</content></note></notes>','%s',to_date('23-02-16','RR-06-23'),'NP2','%s','CNTYPE06');";
        String sqlcaseNote = "INSERT INTO CASENOTE (CASENOTEID,CASEID,NOTEID,RECORDSTATUS,VERSIONNO) VALUES (%s,%s,%s,'RST1',1);";
        String sqlCaseTransactionLog = "INSERT INTO CASETRANSACTIONLOG (TRANSACTIONID,CASEID,TRANSACTIONTYPE,TRANSACTIONDATETIME,USERNAME,RELATEDID,DESCRIPTION) VALUES (-110174243378954240,-1637879679476039680,'ET68','2023-06-23 10:33:11','IAAP113035',-6523300112754540544,'<d ce=\"NOTES_INSERTED\" mc=\"curam.message.BPOCaseEvents\"><p i=\"0\" v=\"Martin Hanna\" t=\"s\" /><p i=\"1\" v=\"20230623\" t=\"d\" /></d>');";




        File file = new File("C:/dev/retionale.xlsx");
        List<RationaleDto> rationaleList = Poiji.fromExcel(file, RationaleDto.class);
        String path = "target/rationale.sql";
        FileWriter fileWriter = new FileWriter(path);
        PrintWriter printWriter = new PrintWriter(fileWriter);
        for (RationaleDto rationale : rationaleList) {
            String caseworker = (rationale.getCaseworker() == null || "".equals(rationale.getCaseworker())) ? rationale.getUsername() : rationale.getCaseworker();

            try{
                printWriter.println(String.format(sqlNote, rationale.getPlannedItemId(),
                        caseworker,
                        rationale.getCaseworkerFullName(),
                        rationale.getRationaleText().replaceAll("'","''").replace("D'A", "D''A").replace("O'C", "O''C").replace("D'S", "D''S"),
                        caseworker,
                        rationale.getName()));
                printWriter.println(String.format(sqlcaseNote, rationale.getPlannedItemId(),
                        rationale.getCaseId(),
                        rationale.getPlannedItemId()));

            }catch (Exception e){
                e.printStackTrace();
            }

        }

    }
}
