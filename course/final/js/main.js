(function() {
	var minRadius = 1,
		currentRadius = minRadius,
		maxSampleSize = 3000;

	var map = new Datamap({
		element: document.getElementById("usmap"),
			scope:"usa",
			geographyConfig: {
			popupOnHover:false,
			highlightOnHover:false
		},
		bubblesConfig: {
			animationComplete: function(datamap, bubbles) {
				bubbles
					.transition()
					.duration(100)
					.attr("r", function ( datum ) {
						return datum.radius;
					});
			},	
			borderColor: '#35A4FF',
			borderWidth: 1,
			fillColor: '#35A4FF',
			fillOpacity: 0.2,	
			highlightFillOpacity: 0.25,
			highlightOnHover: true,
			popupOnHover: true
		},
		done: function(datamap) {
			datamap.svg.selectAll('.datamaps-subunit').on('click', function(geo) {
				alert(geo.properties.name);
			});
		}		 
	});
	
	var jsonCities = d3.json("data/cities.json", function(data) {
		// format the data for the topojson format
		var allCities = formatToDataMaps(data),
			refreshingMap = false;
	 
	 	// update bubbles on map
		filterCities(allCities);

		// event handler for when city name is changed
		d3.select("#city").on("input", function() {
			var self = this;
			
			// prevents the map from being repeatedly refreshed when multiple input events
			// are fired in a short amount of time
			if(!refreshingMap) {
				refreshingMap = true;
				setTimeout(function() {
					filterCities(allCities, self.value);
					refreshingMap = false;
				}, 500);
			}
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

		// refresh bubbles on map	
		updateDataMap(cities);
		
		// update text stats at bottom of map		
		updateStats(cities, timer);	
	}
	
	/* formats json data to DataMaps format */
	function formatToDataMaps(data) {
		data = _.map(data, function(row) {
			return {
				latitude: row.la,
				longitude: row.lo,
				city: row.ci,
				state: row.st,
				radius: currentRadius
			}
		});
		return data;
	}
	
	/* reduces dataset size, so as not to overwhelm the map with too many data points */
	function sampleData(data) {
		// todo: try to add population
		return _.sample(data, maxSampleSize);
	}
	
	/* calls the DataMap library to refresh the bubbles on map */
	function updateDataMap(data) {
		var radiusScale = d3.scale.sqrt()
			.domain([1, maxSampleSize])
			.rangeRound([10, minRadius]);
		
		currentRadius = radiusScale(data.length);
		
		data = _.map(data, function(row) {
			row.radius = currentRadius;
			return row;
		});
		
		map.bubbles(data, {
			popupTemplate: function (geo) {
				return '<div class="hoverinfo">' + geo.city +
					', ' + geo.state + '</div>';
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


