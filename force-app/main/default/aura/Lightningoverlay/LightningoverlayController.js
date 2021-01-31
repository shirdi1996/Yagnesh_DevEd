({
    handleShowModal: function(component, evt, helper) {
      
                   component.find('overlayLib').showCustomModal({
                       header: "Application Confirmation",
                       body: "Test modal Body", 
                       showCloseButton: true,
                       // <button class="slds-button slds-button_neutral">Cancel</button>
                       closeCallback: function() {
                           alert('You closed the alert!');             
                           // closeCallback is used to show alert when close button is clicked.
                       }
                   })
    }
})