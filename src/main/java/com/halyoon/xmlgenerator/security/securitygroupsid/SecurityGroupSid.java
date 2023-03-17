package com.halyoon.xmlgenerator.security.securitygroupsid;

import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlElementWrapper;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class SecurityGroupSid {
    @JacksonXmlElementWrapper(useWrapping = false)
    private List<com.halyoon.xmlgenerator.pojo.Row> row = new ArrayList<>();
}
