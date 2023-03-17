package com.halyoon.xmlgenerator.security.securitygroupsid;

import com.halyoon.xmlgenerator.pojo.SecurityGroupSidType;
import com.poiji.bind.Poiji;
import jakarta.xml.bind.JAXBContext;
import jakarta.xml.bind.JAXBException;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

public class SidCreator {
    public SecurityGroupSidType unmarshall() throws JAXBException, IOException {
        JAXBContext context = JAXBContext.newInstance(SecurityGroupSidType.class);

        FileReader fileReader = new FileReader(ResourceUtils.getFile(
                "classpath:sid.xml"));
        SecurityGroupSidType unmarshal = (SecurityGroupSidType) context.createUnmarshaller()
                .unmarshal(fileReader);
        return unmarshal;
    }

}
