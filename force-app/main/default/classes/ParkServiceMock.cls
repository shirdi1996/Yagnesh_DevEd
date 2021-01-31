@isTest
global class ParkServiceMock implements WebServiceMock {
	//Provide concrete implementation for doInvoke()
	
    public void doInvoke(
        Object Stub,
        Object soapRequest,
        Map<String,Object> responseMap,
		String endPoint,
		String soapAction,
		String requestName,
		String responseNamespace,
		String responseName,
		String responseType            
    ){
    ParksServices.byCountryResponse country_response = new ParksServices.byCountryResponse();
        country_response.return_x = new String[]{'Test Park1','Test Park2','Test Park3'};
            responseMap.put('response_x', country_response);
        
    }
        
    
    
    
}