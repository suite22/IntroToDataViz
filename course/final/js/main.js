var map = new Datamap({
    element: document.getElementById('usmap'),
    scope: 'usa',
    geographyConfig: {
        popupOnHover: false,
        highlightOnHover: false
    },
    bubbleConfig: {
        borderColor: '#35A4FF',
        highlightFillOpacity: 0.25
    }
});

var jsonCities = d3.json("data/cities.json", function(cityData) {

    var cities = cityData.map(function(row) {
        //debugger;
        return {
            latitude: row.la,
            longitude: row.lo,
            city: row.ci,
            radius: 2
        }
    });
    
    var citiesSample = _.sample(cities, 1000);

    map.bubbles(citiesSample, {
        popupTemplate: function (geo, d) {
            return ['<div class="hoverinfo">' + d.city,
            '</div>'].join('');
        }
    })

	d3.select("#city").on("input", function() {
		var searchCity = this.value.toLowerCase();

		console.log(this.value);

		citiesSample = _.sample(
			_.filter(cities, function(row) {
				var city = row.city.toLowerCase();
				return (city.indexOf(searchCity) == 0);
			})
		, 1000);
		
		debugger;
		map.bubbles(citiesSample);

	});
})            


