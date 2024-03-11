update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('09-DEC-22 00:00:00','DD-MON-RR HH24:MI:SS') where mtcueos.caseid = (select c.caseid from MTCUEAPOUTCOMESURVEY e

update casereview cr set cr.SCHEDULEDSTARTDATE = to_date('09-JAN-23 00:00:00','DD-MON-RR HH24:MI:SS') where  cr.CASEID = (select c.caseid from MTCUEAPOUTCOMESURVEY e
                                                                                                                                                   join caseheader c on e.caseid = c.caseid and c.casereference =  7558022) and cr.REASONCODE = 'CR14'; -- Outcome at 1 month
                                                                                                                                                                       join caseheader c on e.caseid = c.caseid and c.casereference =  7558022);  -- 7558022
                                                                                                                                                                       join caseheader c on e.caseid = c.caseid and c.casereference =  7558022);  -- 7558022

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('09-DEC-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 5598994872590663680;  -- 7558022
update casereview set SCHEDULEDSTARTDATE = to_date('09-JAN-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 5598994872590663680and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('09-MAR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 5598994872590663680 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('09-JUN-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 5598994872590663680 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('09-DEC-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 5598994872590663680 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = -1009889283944742912;  -- 7225813
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -1009889283944742912 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -1009889283944742912 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -1009889283944742912 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -1009889283944742912 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 8692050961335582720;  -- 7406632
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 8692050961335582720 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 8692050961335582720 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 8692050961335582720 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 8692050961335582720 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 9069487189749923840;  -- 7282109
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 9069487189749923840 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 9069487189749923840 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 9069487189749923840 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 9069487189749923840 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 7023554160813408256;  -- 7430750
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 7023554160813408256 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 7023554160813408256 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 7023554160813408256 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 7023554160813408256 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 1034443405817544704;  -- 7472253
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1034443405817544704 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1034443405817544704 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1034443405817544704 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1034443405817544704 and REASONCODE = 'CR7';


update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 6447036783661154304;  -- 7519092
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6447036783661154304 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6447036783661154304 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6447036783661154304 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6447036783661154304 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 3472828143713124352;  -- 7500349
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 3472828143713124352 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 3472828143713124352 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 3472828143713124352 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 3472828143713124352 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('16-NOV-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 6390593216810319872;  -- 7703538
update casereview set SCHEDULEDSTARTDATE = to_date('16-DEC-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6390593216810319872 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('16-FEB-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6390593216810319872 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('16-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6390593216810319872 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('16-NOV-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6390593216810319872 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('18-AUG-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = -2948656350495768576;  -- 7684606
update casereview set SCHEDULEDSTARTDATE = to_date('18-SEP-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -2948656350495768576 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('18-NOV-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -2948656350495768576 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('18-FEB-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -2948656350495768576 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('18-AUG-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -2948656350495768576 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('20-JUN-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = -8400067299163242496;  -- 7449726
update casereview set SCHEDULEDSTARTDATE = to_date('20-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -8400067299163242496 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('20-SEP-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -8400067299163242496 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('20-DEC-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -8400067299163242496 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('20-JUN-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -8400067299163242496 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('28-FEB-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = -1290762003161284608;  -- 7489811
update casereview set SCHEDULEDSTARTDATE = to_date('28-MAR-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -1290762003161284608 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('28-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -1290762003161284608 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('28-AUG-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -1290762003161284608 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('28-FEB-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -1290762003161284608 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('11-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 1927114906176323584;  -- 7480918
update casereview set SCHEDULEDSTARTDATE = to_date('11-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1927114906176323584 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('11-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1927114906176323584 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('11-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1927114906176323584 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('11-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1927114906176323584 and REASONCODE = 'CR7';


update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-NOV-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 6707054378638901248;  -- 7827393
update casereview set SCHEDULEDSTARTDATE = to_date('07-DEC-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6707054378638901248 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('07-FEB-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6707054378638901248 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('07-MAY-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6707054378638901248 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('07-NOV-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6707054378638901248 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('16-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = -7954443207884931072;  -- 7128767
update casereview set SCHEDULEDSTARTDATE = to_date('16-NOV-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7954443207884931072 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('16-JAN-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7954443207884931072 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('16-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7954443207884931072 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('16-OCT-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7954443207884931072 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('09-DEC-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 6200585100585861120;  -- 7446199
update casereview set SCHEDULEDSTARTDATE = to_date('09-JAN-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6200585100585861120 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('09-MAR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6200585100585861120 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('09-JUN-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6200585100585861120 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('09-DEC-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6200585100585861120 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-JAN-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 3728974770566332416;  -- 7494762
update casereview set SCHEDULEDSTARTDATE = to_date('06-MAR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 3728974770566332416 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('06-MAY-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 3728974770566332416 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('06-AUG-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 3728974770566332416 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('06-FEB-24 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 3728974770566332416 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('18-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 557292467880198144;  -- 7294550
update casereview set SCHEDULEDSTARTDATE = to_date('18-AUG-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 557292467880198144 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('18-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 557292467880198144 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('18-JAN-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 557292467880198144 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('18-JUL-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 557292467880198144 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = -7963746725523357696;  -- 7294166
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7963746725523357696 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7963746725523357696 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7963746725523357696 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7963746725523357696 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = -6465838329416908800;  -- 7393188
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -6465838329416908800 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -6465838329416908800 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -6465838329416908800 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -6465838329416908800 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 8691562228417036288;  -- 7509947
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 8691562228417036288 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 8691562228417036288 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 8691562228417036288 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 8691562228417036288 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 5492237103896985600;  -- 7254152
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 5492237103896985600 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 5492237103896985600 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 5492237103896985600 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 5492237103896985600 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 6597461141255880704;  -- 7079478
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6597461141255880704 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6597461141255880704 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6597461141255880704 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 6597461141255880704 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 7380903136422002688;  -- 7379920
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 7380903136422002688 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 7380903136422002688 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 7380903136422002688 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 7380903136422002688 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('01-APR-22 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = -7172896324088496128;  -- 7457522
update casereview set SCHEDULEDSTARTDATE = to_date('01-MAY-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7172896324088496128 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('01-JUL-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7172896324088496128 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('01-OCT-22 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7172896324088496128 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('01-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = -7172896324088496128 and REASONCODE = 'CR7';

update MTCUEAPOUTCOMESURVEY mtcueos set mtcueos.eapoutcomedate = to_date('30-JAN-23 00:00:00','DD-MON-RR HH24:MI:SS') where caseid = 1604939994735050752;  -- 7794756
update casereview set SCHEDULEDSTARTDATE = to_date('28-FEB-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1604939994735050752 and REASONCODE = 'CR14';
update casereview set SCHEDULEDSTARTDATE = to_date('30-APR-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1604939994735050752 and REASONCODE = 'CR5';
update casereview set SCHEDULEDSTARTDATE = to_date('30-JUL-23 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1604939994735050752 and REASONCODE = 'CR6';
update casereview set SCHEDULEDSTARTDATE = to_date('30-JAN-24 00:00:00','DD-MON-RR HH24:MI:SS') where  CASEID = 1604939994735050752 and REASONCODE = 'CR7';
