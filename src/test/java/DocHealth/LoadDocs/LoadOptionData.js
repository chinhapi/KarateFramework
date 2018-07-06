function(medicalType){
    switch(medicalType){
        case 4:
            var myJSON = '{ "medicalType": 4, "page":1, "pageSize":20, "lang": 0 }';
            return myJSON;
            break;
        case 5:
            var myJSON = '{ "medicalType": 5, "page":1, "pageSize":20, "lang": 0 }';
            return myJSON;
            break;
        case 3:
            var myJSON = '{ "medicalType": 3, "page":1, "pageSize":20, "lang": 0 }';
            return myJSON;
            break;
        case 2:
            var myJSON = '{ "medicalType": 2, "page":1, "pageSize":20, "lang": 0 }';
            return myJSON;
            break;
        default:
            var myJSON = '{ "medicalType": 1, "page":1, "pageSize":20, "lang": 0 }';
            return myJSON;
            break;
    }
}