public class ParkLocator {
    
    public static String[] getParksbyCountry(String countryName){
        parksServices.ParksImplPort parkServiceInstance = new parksServices.ParksImplPort();
        return parkServiceInstance.byCountry(countryName);
        
        
    }

}