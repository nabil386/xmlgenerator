update casereview set approvedby='IAAP117059', approveddatetime=to_date('10/04/2023 00:00:00','DD/MM/YYYY HH24:MI:SS'), approvalstatus='ARS1' where caseid = (select caseid from caseheader where casereference = 7301521) and casereviewreference = 6778168 and reasoncode='CR7';
