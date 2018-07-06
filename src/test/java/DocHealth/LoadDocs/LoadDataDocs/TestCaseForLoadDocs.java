package DocHealth.LoadDocs.LoadDataDocs;

import gherkin.deps.com.google.gson.Gson;

import java.util.HashMap;
import java.util.Map;

public class TestCaseForLoadDocs {
    public String TestCaseForAddDocs(){
        Map<String, Object> map = new HashMap<>();
        map.put("medicalType",4 );
        map.put("page",1 );
        map.put("pageSize",20 );
        map.put("lang",0 );
        return new Gson().toJson(map);
    }
}
