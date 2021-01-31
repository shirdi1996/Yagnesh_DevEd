public with sharing class testopenweather {

    public string city {get;set;}
    public string temperature{get;set;}
    public string pressure {get;set;}
    public string min_temp {get;set;}
    public string max_temp {get;set;}
    public string sunrise {get;set;}
    
    public testopenweather(ApexPages.StandardController stdController) {
    Account account = (Account)stdController.getRecord();
    Account = [SELECT Id, shippingcity from Account where Id= :account.Id];
    
     string accountcity = account.shippingcity;
     string apikey = 'd7977b616dd4de5fef6cba5cb2fa5dbd';
     
     string requestEndpoint = 'http://api.openweathermap.org/data/2.5/weather';
     requestEndpoint+='?q='+ accountcity;
     requestEndpoint+='&units= metric';
     requestEndpoint+='&APPID='+apikey;
     
     Http http = new Http();
     HttpRequest request = new HttpRequest();
     request.setEndpoint(requestEndpoint);
     request.setMethod('GET');
     HttpResponse response = http.send(request);
     
     if(response.getStatusCode()==200) {
     Map<string,Object> result = (Map<string,Object>)JSON.deserializeUntyped(response.getBody());
     city = string.valueof(result.get('name'));
     Map<string,Object> allresult = (Map<string,Object>)result.get('name');
      string.valueOf(allresult.get('temperature'));
      string.valueOf(allresult.get('pressure'));
      string.valueOf(allresult.get('humidity'));
      string.valueOf(allresult.get('min_temp'));
      string.valueOf(allresult.get('max_temp'));
      string.valueOf(allresult.get('sunrise'));
      }
        else{
            ApexPages.message myMsg = new ApexPages.Message(ApexPages.severity.Error, 'There was error reading Data');
            ApexPages.addMessage(myMsg);
            
        }

    }

}