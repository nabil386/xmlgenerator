package com.halyoon;

import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import com.halyoon.xmlgenerator.pojo.Attribute;
import com.halyoon.xmlgenerator.pojo.Row;
import com.halyoon.xmlgenerator.security.securitygroupsid.ForeignOffice;
import com.halyoon.xmlgenerator.security.securitygroupsid.SSACountry;
import com.halyoon.xmlgenerator.security.securitygroupsid.SecurityGroupSid;
import com.poiji.bind.Poiji;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class OutcomeExcelTest {
    @Test
    public void ssaCountryExcelTest() throws IOException {
        File file = new File("C:/dev/eapoutcome.xlsx");
        List<OutcomeExcel> ssaCountryList = Poiji.fromExcel(file, OutcomeExcel.class);

    }
}
