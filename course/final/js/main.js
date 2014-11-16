(function() {
	var map = new Datamap({
		 element: document.getElementById("usmap"),
		 scope:"usa",
		 geographyConfig: {
			  popupOnHover:false,
			  highlightOnHover:false
		 },
		 bubbleConfig: {
			  borderColor:'#35A4FF',
			  highlightFillOpacity:0.25,
			  highlightOnHover:true,
			  popupOnHover:true
		 }
	});

	var jsonCities = d3.json("data/cities.json", function(data) {
		var timer = new Timer(),
			allCities = [],
			cities = [];
	
		// format the data for the topojson format
		allCities = formatToDataMaps(data);
	 
	 	// update bubbles on map
		filterCities(allCities);

		// event handler for when city name is changed
		d3.select("#city").on("input", function() {
			filterCities(allCities, this.value);
		});
	});

	/*** Functions ***/
	
	/* updates the data to only show cities beginning with "beginsWith" */
	function filterCities(data, beginsWith) {
		var timer = new Timer(),
			cities = [];
		
		if(beginsWith && beginsWith.length > 0) {
			// we have a city search string
			cities = sampleData(
				_.filter(data, function(row) {
					var city = row.city.toLowerCase();
					return (city.indexOf(beginsWith.toLowerCase()) == 0);
				})
			);
		} else {
			// no city search string
			cities = sampleData(data);
		}

		// check to see if sample size is < 10
		//cities = _.map

		// refresh bubbles on map	
		updateDataMap(cities);
		
		// update text stats at bottom of map		
		updateStats(cities, timer);	
	}
	
	/* formats json data to DataMaps format */
	function formatToDataMaps(data) {
		return _.map(data, function(row) {
			return {
				latitude: row.la,
				longitude: row.lo,
				city: row.ci,
				radius: 2
			}
		});
	}
	
	/* reduces dataset size, so as not to overwhelm the map with too many data points */
	function sampleData(data) {
		// todo: try to add population
		return _.sample(data, 1000);
	}
	
	/* calls the DataMap library to refresh the bubbles on map */
	function updateDataMap(data) {
		map.bubbles(data, {
			popupTemplate: function (geo, d) {
				return ['<div class="hoverinfo">' + d.city,
				'</div>'].join('');
			}
		});
	} 

	/* updates the text statistics below the graph */
	function updateStats(data, timer) {
		timer.stop();
		d3.selectAll(".execution_time").text(timer.time);
		d3.selectAll(".record_count").text(data.length);
	}

	/* Timer Class */
	function Timer() {
		var start, end;
		this.reset = function() {
			start = end = new Date().getTime();
			return this;
		}
		this.start = function() {
			start = new Date().getTime();
			return this;
		}
		this.stop = function() {
			end = new Date().getTime();
			this.time = end - start;
			return this;
		}
		this.time = 0;
		this.reset();		
	}
})();


