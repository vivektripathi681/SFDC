({
	getInput : function(cmp, event) {
      var fullName = cmp.find("name").get("v.value");
      var outName = cmp.find("nameOutput");
      outName.set("v.value", fullName);
    }
	
})