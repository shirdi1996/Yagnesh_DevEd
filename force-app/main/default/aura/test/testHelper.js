({
    changeMyLabel : function(component, buttonId) 
    {
        var newLabel = 'My Label Changed';
        this.changeButtonLabel(component, buttonId, newLabel);  
    },
    changeButtonLabel : function(component, buttonId, newLabel)
    {
        document.getElementById(buttonId).value = newLabel;
    }
})