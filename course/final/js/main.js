var map = new Datamap({
	 element: document.getElementById("usmap"),
	 scope: 'usa'
});

d3.select("#city").on("input", function() {
	console.log(this.value);

});