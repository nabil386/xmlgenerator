package com.halyoon.xmlgenerator.securitygroupsid;

import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import com.halyoon.xmlgenerator.pojo.Attribute;
import com.halyoon.xmlgenerator.pojo.Row;
import com.halyoon.xmlgenerator.pojo.RowType;
import com.halyoon.xmlgenerator.pojo.SecurityGroupSidType;
import com.halyoon.xmlgenerator.security.securitygroupsid.SecurityGroupSid;
import com.halyoon.xmlgenerator.security.securitygroupsid.Sid;
import com.halyoon.xmlgenerator.security.securitygroupsid.SidCreator;
import com.poiji.bind.Poiji;
import jakarta.xml.bind.JAXBException;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

public class SidCreatorTest {

    @Test
    public void createSide() throws JAXBException, IOException {
        String sqlQuery = "INSERT WHEN NOT EXISTS (SELECT SIDNAME FROM SECURITYGROUPSID where GROUPNAME = '%s' and SIDNAME = '%s') THEN INTO SECURITYGROUPSID (GROUPNAME,SIDNAME,LASTWRITTEN) values ('%s','%s', systimestamp ) SELECT '%s' FROM DUAL;";
        SidCreator sidCreator = new SidCreator();
        SecurityGroupSidType unmarshall = sidCreator.unmarshall();
        List<RowType> row = unmarshall.getRow();
        for(int i = 0; i < row.size(); i++){
            System.out.println(String.format(sqlQuery, row.get(i).getAttribute().get(0).getValue(), row.get(i).getAttribute().get(1).getValue(), row.get(i).getAttribute().get(0).getValue(), row.get(i).getAttribute().get(1).getValue(), row.get(i).getAttribute().get(1).getValue()));
        }
    }

    @Test
    public void createDmx() throws IOException {
        SecurityGroupSid securityGroupSid = new SecurityGroupSid();
        File file = new File("C:/dev/securitygroupsid.xlsx");
        List<Sid> sidList = Poiji.fromExcel(file, Sid.class);
        for(Sid sid : sidList){
            Row sidRow = new Row();
            sidRow.getAttribute().add(getAttribute("GROUPNAME", sid.getGroupName()));
            sidRow.getAttribute().add(getAttribute("SIDNAME", sid.getSidName()));
            sidRow.getAttribute().add(getAttribute("LASTWRITTEN", ""));
            securityGroupSid.getRow().add(sidRow);
        }
        XmlMapper xmlMapper = new XmlMapper();
        xmlMapper.enable(SerializationFeature.INDENT_OUTPUT);
        xmlMapper.writeValue(new File("target/sid.dmx"),
                securityGroupSid);
    }

    private Attribute getAttribute(String name, String value) {
        Attribute attribute = new Attribute();
        attribute.setName(name);
        attribute.setValue(value);
        return attribute;
    }
}
