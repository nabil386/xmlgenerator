package com.halyoon.xmlgenerator.pojo;

import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty;
import jakarta.xml.bind.annotation.XmlAccessType;
import jakarta.xml.bind.annotation.XmlAccessorType;
import jakarta.xml.bind.annotation.XmlAttribute;
import jakarta.xml.bind.annotation.XmlRootElement;
import lombok.Data;

@Data

public class Attribute {

    @JacksonXmlProperty(localName = "name", isAttribute = true)
    private String name;
    private String value;
}
