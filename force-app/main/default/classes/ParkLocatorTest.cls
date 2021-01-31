@isTest
public class ParkLocatorTest {
    @isTest static void testParkServiceCallOut(){
        //Set the context to return a mock response for the erbservice
 	Test.setMock(WebServiceMock.class, new ParkServiceMock())     ;
        String [] testParkList  = ParkLocator.getParksbyCountry('India');
            system.assertEquals(3, testParkList.size());
        system.assertEquals('Test Park1',testParkList[0] );
    }
}