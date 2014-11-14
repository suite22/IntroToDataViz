var cities = [];

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

var jsonCities = d3.json("data/cities-short.json", function(cityData) {
    //debugger;

    citiesD3 = cityData.map( function(row) {
        //debugger;
    
        return {
            latitude: row.la,
            longitude: row.lo,
            city: row.ci,
            radius: 1
        }
    })

    map.bubbles(citiesD3, {
        popupTemplate: function (geo, data) {
            return ['<div class="hoverinfo">' + data.city,
            '</div>'].join('');
        }
    })
})            

d3.select("#city").on("input", function() {
	console.log(this.value);

	// as the user updates the search field, create a new filtered selection
	// then update the map. 
	var userSearch = citiesD3.filter(this.value);
	console.log(userSearch);
});
