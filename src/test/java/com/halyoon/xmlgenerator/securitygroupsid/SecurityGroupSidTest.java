package com.halyoon.xmlgenerator.securitygroupsid;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import com.halyoon.xmlgenerator.pojo.Attribute;
import com.halyoon.xmlgenerator.pojo.Row;
import com.halyoon.xmlgenerator.security.securitygroupsid.SecurityGroupSid;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertNotNull;

public class SecurityGroupSidTest {

    @Test
    public void whenJavaSerializedToXmlStr_thenCorrect() throws JsonProcessingException{
        XmlMapper xmlMapper = new XmlMapper();
        SecurityGroupSid securityGroupSid = new SecurityGroupSid();
        Attribute groupNameAttribute = new Attribute();
        groupNameAttribute.setValue("some.sid");
        groupNameAttribute.setName("groupName");

        Attribute sidNameAttribute = new Attribute();
        sidNameAttribute.setValue("some.sid");
        sidNameAttribute.setName("sidName");

        Row row = new Row();
        row.getAttribute().add(groupNameAttribute);
        row.getAttribute().add(sidNameAttribute);
        securityGroupSid.getRow().add(row);
        String xml = xmlMapper.writeValueAsString(securityGroupSid);
        assertNotNull(xml);
    }
}
