update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119515') where casereference = '7667808';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119515')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119515');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119515') where casereference = '7668125';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119515')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119515');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114472') where casereference = '7688704';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114472')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114472');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114573') where casereference = '8182178';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114573')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114573');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114573') where casereference = '8153227';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114573')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114573');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP116148') where casereference = '7265593';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP116148')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP116148');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119951') where casereference = '8264624';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119951')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119951');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP116253') where casereference = '7515177';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP116253')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP116253');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP122359') where casereference = '7853488';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP122359')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP122359');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118849') where casereference = '8149612';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP118849')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP118849');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP117156') where casereference = '7296891';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP117156')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP117156');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114706') where casereference = '8141332';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114706')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114706');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114704') where casereference = '8140221';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114704')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114704');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114533') where casereference = '7519602';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114533')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114533');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118290') where casereference = '8149724';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP118290')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP118290');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119186') where casereference = '8145385';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119186')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119186');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118290') where casereference = '8188968';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP118290')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP118290');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119695') where casereference = '7758845';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119695')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119695');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114296') where casereference = '6991648';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114296')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114296');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114616') where casereference = '7819153';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114616')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114616');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118993') where casereference = '8141009';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP115392') where casereference = '8098620';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP115392')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP115392');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118993') where casereference = '8143631';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118993') where casereference = '8143862';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118993') where casereference = '8147013';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118993') where casereference = '8148846';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118993') where casereference = '8149705';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118993') where casereference = '8163932';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118993');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118899') where casereference = '8138851';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118899')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118899');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118899') where casereference = '8141527';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118899')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118899');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118896') where casereference = '8140972';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118896') where casereference = '8142383';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118896') where casereference = '8147907';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118896') where casereference = '8147951';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118896') where casereference = '8148747';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP118896') where casereference = '8148781';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP118896');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119051') where casereference = '8034121';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119051')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119051');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119161') where casereference = '7985864';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119161') where casereference = '8051787';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119161') where casereference = '8006758';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119161') where casereference = '8053033';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119161') where casereference = '8100420';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119161') where casereference = '8039207';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119161') where casereference = '8149577';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119161') where casereference = '8051934';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119161') where casereference = '8224773';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119161') where casereference = '8224761';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119161');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119082') where casereference = '8145668';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119082')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP119082');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP116925') where casereference = '8140062';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP116925')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP116925');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP116925') where casereference = '8144612';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP116925')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP116925');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP116925') where casereference = '8145701';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP116925')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP116925');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP116925') where casereference = '8145702';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP116925')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA2' and u.username = 'IAAP116925');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119527') where casereference = '8145862';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119527')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119527');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119527') where casereference = '8141458';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119527')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119527');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP115393') where casereference = '8145826';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP115393')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP115393');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119182') where casereference = '8239818';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119182')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119182');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114818') where casereference = '8204826';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114818')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114818');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114991') where casereference = '8146527';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114991')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114991');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114991') where casereference = '8146961';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114991')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114991');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114373') where casereference = '8145339';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114373')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114373');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114407') where casereference = '8142957';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114407')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114407');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114409') where casereference = '8080259';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114409')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114409');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114409') where casereference = '8147933';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114409')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114409');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114409') where casereference = '8146650';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114409')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114409');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '8140176';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114382') where casereference = '8141318';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114382')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114382');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP120358') where casereference = '8142887';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP120358')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP120358');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114382') where casereference = '8145312';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114382')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114382');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7135141';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114382') where casereference = '8142339';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114382')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114382');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114382') where casereference = '8138921';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114382')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114382');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7523673';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7546881';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7566630';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7728679';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7784017';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7818660';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7865733';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7899952';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '8027514';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '8044257';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '8066330';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '8068744';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7900131';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP120358') where casereference = '8148780';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP120358')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP120358');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114377') where casereference = '7975133';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114377');
update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP114382') where casereference = '8147756';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114382')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP114382');
