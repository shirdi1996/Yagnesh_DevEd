({
    doInit : function(component,event,helper){
        // fetching car types from backend using apex
        var createCarRecord=$A.get('e.force:createRecord');
        if (createCarRecord){
            component.set('v.showNew', true);
        }   else
        {component.set('v.showNew', false);
        }
        var carTypes=component.get('v.CarType');
        console.log('Car types on the Screen are ----->' + carTypes);
        component.set('v.CarType', ['Sports Car', 'Luxury Car', 'Van']);
        /* carTypes=component.get('v.CarType');*/
        var carTypes=component.get('v.CarType');
        console.log('Car types on the Screen are ----->' + carTypes);
    },
    
    handleRender : function(component,event,helper){
        //  alert( 'Alert is Render');
    },
    
    onSearchClick: function(component, event, helper) {
        helper.handleOnSearchClick (component, event, helper);
    },   
    carselected : function(component,event,helper){
        var car = component.find('CarType').get('v.value');
        alert( 'Selected car is '+ car);
    },
    toggleButton : function(component, event, helper) {
        var currentValue = component.get('v.showNew')
        if(currentValue){
            component.set("v.showNew","false");
        }else{
            component.set("v.showNew","true");
        }
        
    }
    
})