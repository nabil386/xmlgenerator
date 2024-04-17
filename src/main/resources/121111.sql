update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = 'IAAP119515') where casereference = '7667808';
update concernrole set concernrole.primaryalternateid = (Select cr.primaryalternateid
                                                         from users u
                                                                  join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                                                  join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                                                  join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                                                  join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                                                  join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                                                  join concernrole cr on cr.concernroleid = mpe.providerconcernroleid --ppr.partyconcernroleid
                                                                  left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                                         where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119515')
where concernrole.concernroleid = (Select cr.concernroleid
                                   from users u
                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID
                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid
                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid
                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid
                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid
                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid --ppr.partyconcernroleid
                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid
                                        --where mpe.catchmentareacd ='ESTCA3'--in ( :catchmentCD)
                                        --where u.username = 'IAAP119515' and
                                   where mpe.catchmentareacd ='ESTCA3' and u.username = 'IAAP119515')
