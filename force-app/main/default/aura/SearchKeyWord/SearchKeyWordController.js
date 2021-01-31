({
 findAccount : function(component, event, helper) { 
        var action=component.get('c.fetchAccount');
        action.setParams({
            searchKeyWord : component.get("v.keywordHolder")         
        });   // setParams is optional, since we are expecting parameter in apex controller method we are passing the user entered value in the apex controller method.
        
        action.setCallback(this,function(response){          // Getting the response back
            var state=response.getState();
            var response1=response.getReturnValue();
            if(state==="SUCCESS")
            {
                component.set("v.accountList",response1);
            }         
        });
        $A.enqueueAction(action);
 }


})