package com.halyoon;

import com.halyoon.xmlgenerator.security.securitygroupsid.PBFDto;
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
        String sqlNote = "INSERT INTO NOTE (NOTEID,SENSITIVITYCODE,NOTESTEXT,USERNAME,CREATIONDATETIME,PRIORITYCODE,SUBJECTTEXT,CASENOTETYPE) VALUES (%s,'1','<notes displayAsDescending=\"yes\" showtimezone=\"no\"><note><date domain=\"SVR_DATETIME\">20230623T103311</date><timeZone>Eastern Standard Time</timeZone><author username=\"%s\">%s</author><content>%s</content></note></notes>','%s',to_date('23-02-16','RR-MM-DD'),'NP2','%s','CNTYPE06');";
        String sqlNoteDelete = "delete from NOTE where NOTEID = %s;";
        String sqlcaseNote = "INSERT INTO CASENOTE (CASENOTEID,CASEID,NOTEID,RECORDSTATUS,VERSIONNO) VALUES (%s,%s,%s,'RST1',1);";
        String sqlcaseNoteDelete = "delete from CASENOTE where CASENOTEID = %s;";
        String sqlUpdatePlannedItem = "update planneditem set rationalenoteid = %s where plannedItemid = %s;";
        String sqlCaseTransactionLog = "INSERT INTO CASETRANSACTIONLOG (TRANSACTIONID,CASEID,TRANSACTIONTYPE,TRANSACTIONDATETIME,USERNAME,RELATEDID,DESCRIPTION) VALUES (-110174243378954240,-1637879679476039680,'ET68','2023-06-23 10:33:11','IAAP113035',-6523300112754540544,'<d ce=\"NOTES_INSERTED\" mc=\"curam.message.BPOCaseEvents\"><p i=\"0\" v=\"Martin Hanna\" t=\"s\" /><p i=\"1\" v=\"20230623\" t=\"d\" /></d>');";




        File file = new File("C:/dev/retionale.xlsx");
        List<RationaleDto> rationaleList = Poiji.fromExcel(file, RationaleDto.class);
        String notePath = "target/note.sql";
        String caseNotePath = "target/casenote.sql";
        String updatePath = "target/rationalenoteid.sql";
        FileWriter noteFileWriter = new FileWriter(notePath);
        FileWriter cateNoteFileWriter = new FileWriter(caseNotePath);
        FileWriter updatefileWriter = new FileWriter(updatePath);
        PrintWriter notePrintWriter = new PrintWriter(noteFileWriter);
        PrintWriter caseNotePrintWriter = new PrintWriter(cateNoteFileWriter);
        PrintWriter updatePrintWriter = new PrintWriter(updatefileWriter);
        for (RationaleDto rationale : rationaleList) {
            String caseworker = (rationale.getCaseworker() == null || "".equals(rationale.getCaseworker())) ? rationale.getUsername() : rationale.getCaseworker();

            try{
//                notePrintWriter.println(String.format(sqlNoteDelete, rationale.getPlannedItemId()));
                notePrintWriter.println(String.format(sqlNote, rationale.getPlannedItemId(),
                        caseworker,
                        rationale.getCaseworkerFullName(),
                        rationale.getRationaleText().replaceAll("'","''").replace("D'A", "D''A").replace("O'C", "O''C").replace("D'S", "D''S"),
                        caseworker,
                        rationale.getName()));
//                caseNotePrintWriter.println(String.format(sqlcaseNoteDelete, rationale.getPlannedItemId()));
                caseNotePrintWriter.println(String.format(sqlcaseNote, rationale.getPlannedItemId(),
                        rationale.getCaseId(),
                        rationale.getPlannedItemId()));
                updatePrintWriter.println(String.format(sqlUpdatePlannedItem, rationale.getPlannedItemId(), rationale.getPlannedItemId()));

            }catch (Exception e){
                e.printStackTrace();
            }

        }
        notePrintWriter.close();
        caseNotePrintWriter.close();
        updatefileWriter.close();

    }

    @Test
    public void PBFTest() throws IOException{

        String sqlUpdate = "update casereview set approveddatetime = to_date('%s', 'MM/DD/YYYY HH24:MI'), approvalstatus = 'ARS1', approvedby = 'IAAP117059' where casereviewreference = %s;";
        File file = new File("C:/dev/PBF.xlsx");
        List<PBFDto> PBFList = Poiji.fromExcel(file, PBFDto.class);

        String pbfPath = "target/pbf.sql";
        FileWriter pbfFileWriter = new FileWriter(pbfPath);
        PrintWriter updatePrintWriter = new PrintWriter(pbfFileWriter);

        for(PBFDto bpfDto : PBFList){
            bpfDto.getApprovalDate();
            bpfDto.getCheckpointRef();
            updatePrintWriter.println(String.format(sqlUpdate, bpfDto.getApprovalDate(), bpfDto.getCheckpointRef()));
        }
        updatePrintWriter.close();

    }
}
