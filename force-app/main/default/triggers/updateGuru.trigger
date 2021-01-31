trigger updateGuru on Shishya__c (after Update) {
    List<String> gNames = New List<String>();
    integer Counter;
    counter =0;
    List<Guru__c> guru = [select Id, Name, Shishya_Status__c, No_of_Shishyas__c from guru__c where Name in: gNames];
    system.debug('gIds'+ gNames);
    for(shishya__c shi : trigger.new){
        gNames.add(shi.GuruShishya__c);
        List<Shishya__c> newList = [select Id, Speciality__c from Shishya__c where gurushishya__c =: shi.GuruShishya__c];
            
        for(Shishya__c sh : newList){
        if(shi.Speciality__c == 'Post Graduate'){
                        Counter++;
                    }
        }}
                for(guru__c g:guru){
                    if(g.No_of_Shishyas__c == counter){
                        g.Shishya_Status__c = 'Post Graduate';
                    }
                  }
    }