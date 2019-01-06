({
    getBill: function(cmp){
        var action = cmp.get("c.getBill");
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS") {
                cmp.set("v.Bill", response.getReturnValue());
            }
        });
	 $A.enqueueAction(action);
    }
})