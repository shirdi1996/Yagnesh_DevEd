({
    doInit : function(component, event, helper) {
        var action=component.get("c.getContactDetails");
        var contactid = component.get("v.recordId");
        console.log("Contact id is:"  +  contactid);
        action.setParams({
            "contactid":contactid
                        });
        action.setCallback(this,function(response)
        {
             var state=response.getState();
            if(state==="SUCCESS")
            {
                 var storeResponse = response.getReturnValue();   
                 component.set("v.ErrorMsg",storeResponse);
            }
        });
        $A.enqueueAction(action);
    }, 

})