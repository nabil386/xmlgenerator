package com.halyoon;

import com.halyoon.sqlgenerator.model.EAPOwnerAndSite;
import com.poiji.bind.Poiji;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.List;

public class EapOwnerAndSiteTest {

    private final String caseHeaderQuery = "update caseheader set OWNERORGOBJECTLINKID = (select ORGOBJECTLINKID from ORGOBJECTLINK where username = '%s') where casereference = '%s';";
    private final String siteQuery = "update concernrole set concernrole.primaryalternateid = '%s' "+
            "where concernrole.concernroleid = (Select cr.concernroleid\n" +
            "                                   from users u\n" +
            "                                            join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID\n" +
            "                                            join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid\n" +
            "                                            join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid\n" +
            "                                            join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid\n" +
            "                                            join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid\n" +
            "                                            join concernrole cr on cr.concernroleid = mpe.providerconcernroleid\n" +
            "                                            left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid\n" +
            "                                   where u.username = '%s');";

    private final String catchmentQuery = "update MTCUPROVIDEREXT set MTCUPROVIDEREXT.catchmentareacd = '%s' where MTCUPROVIDEREXT.providerconcernroleid = (Select mpe.providerconcernroleid\n" +
            "                                                                                                                     from users u\n" +
            "                                                                                                                              join mtcuproviderPartyext mppe on mppe.providerPartyID = u.providerPartyID\n" +
            "                                                                                                                              join MTCUPROVIDEREXT mpe on mpe.providerconcernroleid = mppe.primarysdscroleid\n" +
            "                                                                                                                              join providergroupassociate pga on pga.providerconcernroleid = mpe.providerconcernroleid\n" +
            "                                                                                                                              join mtcuprovidergroupext mpge on mpge.providergroupconcernroleid = pga.providergroupconcernroleid\n" +
            "                                                                                                                              join providerparty ppr on ppr.providerpartyid = mppe.providerpartyid\n" +
            "                                                                                                                              join concernrole cr on cr.concernroleid = mpe.providerconcernroleid --ppr.partyconcernroleid\n" +
            "                                                                                                                              left join emailaddress eml on cr.primaryemailaddressid = eml.emailaddressid\n" +
            "                                                                                                                     where u.username = '%s');\n";

    @Test
    public void updateUserAndSite(){
        File file = new File("/Users/mac/workspaces/xmlgenerator/src/main/resources/EAPOwnerDataUpdate-121111.xlsx");
        List<EAPOwnerAndSite> eapOwnerAndSites = Poiji.fromExcel(file, EAPOwnerAndSite.class);
        for(EAPOwnerAndSite eapOwnerAndSite : eapOwnerAndSites){
            System.out.println(String.format(caseHeaderQuery, eapOwnerAndSite.getIaaPNumber(), eapOwnerAndSite.getEapReNumber()));
            String catchmentArea = "Hamilton".equals(eapOwnerAndSite.getRegion()) ? "ESTCA3" : "ESTCA2";
            System.out.println(String.format(siteQuery, eapOwnerAndSite.getSiteCode(), eapOwnerAndSite.getIaaPNumber()));
            System.out.println(String.format(catchmentQuery, catchmentArea, eapOwnerAndSite.getIaaPNumber()));
        }
    }

}
