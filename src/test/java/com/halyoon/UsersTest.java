package com.halyoon;

import com.halyoon.sqlgenerator.model.EAPMilestoneApproval;
import com.halyoon.sqlgenerator.model.Users;
import com.poiji.bind.Poiji;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.util.List;

public class UsersTest {
    @Test
    public void UsersExcelTest() throws IOException {

        String q1 = "delete from ADMINISTRATIONCONCERNROLE where administrationroleid in (select administrationroleid from ADMINISTRATIONROLE where username = '%s');";
        String q2 = "delete from ADMINISTRATIONROLE where username = '%s';";
        String q3 = "delete from POSITIONHOLDERLINK where username = '%s';";
        String q4 = "delete from TASKREDIRECTION where fromusername = '%s';";
        String q5 = "delete from TASKREDIRECTION where tousername = '%s';";
        String q6 = "delete from CASEAPPROVAL where username = '%s';";
        String q7 = "delete from USERLINK where username = '%s';";
        String q8 = "delete from users where username = '%s';";

        File file = new File("/Users/mac/workspaces/xmlgenerator/src/main/resources/users.xlsx");
        List<Users> userList = Poiji.fromExcel(file, Users.class);

        for(Users user : userList) {
            System.out.println(String.format(q1, user.getUsername() ));
            System.out.println(String.format(q2, user.getUsername() ));
            System.out.println(String.format(q3, user.getUsername() ));
            System.out.println(String.format(q4, user.getUsername() ));
            System.out.println(String.format(q5, user.getUsername() ));
            System.out.println(String.format(q6, user.getUsername() ));
            System.out.println(String.format(q7, user.getUsername() ));
            System.out.println(String.format(q8, user.getUsername() ));

        }
    }

}
