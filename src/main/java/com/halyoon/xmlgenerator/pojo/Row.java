package com.halyoon.xmlgenerator.pojo;

import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlElementWrapper;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class Row {
    @JacksonXmlElementWrapper(useWrapping = false)
    private List<Attribute> attribute = new ArrayList<>();
}
