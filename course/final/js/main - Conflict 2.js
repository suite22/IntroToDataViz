(function() {
	var defaultRadius = 2,
		currentRadius = defaultRadius;

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
		 },
		done: function(datamap) {
			console.log("done");
			//debugger;
			var bubbles = d3.selectAll('circle.datamaps-bubble');
			bubbles
				.attr("r", function ( datum ) {
					return datum.radius;
				})
				.transition()
				.duration(400)
				.attr("r", function ( datum ) {
					return datum.radius;
				});	
			
			datamap.svg.selectAll('.datamaps-subunit').on('click', function(geo) {
				alert(geo.properties.name);
			});
		}		 
	});
	
	var jsonCities = d3.json("data/cities.json", function(data) {
		// format the data for the topojson format
		var allCities = formatToDataMaps(data);
	 
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
			
			if(beginsWith.indexOf("tuscan") == 0) {
				//debugger;
			}
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
	
	function removeBadData(data) {
		return _.filter(data, function(row) {
			return (row.latitude > 0 && row.longitude > 0);
		});	
	}
	
	/* reduces dataset size, so as not to overwhelm the map with too many data points */
	function sampleData(data) {
		// todo: try to add population
		return _.sample(data, 1000);
	}
	
	/* calls the DataMap library to refresh the bubbles on map */
	function updateDataMap(data) {
		var startRadius = currentRadius;
		
		if(data.length <= 100) {
			currentRadius = 5;
		} else {
			currentRadius = defaultRadius;
		}
		
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

		//d3.selectAll("circle.datamaps-bubble")
		//var bubbles = d3.selectAll('circle.datamaps-bubble').data(data);
		/*
		var bubbles = d3.selectAll('circle.datamaps-bubble');
		bubbles
			.attr("r", startRadius)	
			.transition()
			.duration(400)
			.attr("r", function ( datum ) {
				return datum.radius;
			})			
			.call(endall, function() { 
				console.log("all done")
			});
		*/
		
		/*
		promise.done(function() {
			map.bubbles(data, {
				popupTemplate: function (geo) {
					return '<div class="hoverinfo">' + geo.city +
						', ' + geo.state + '</div>';
				}
			});			
		});
		*/

/*
		$("circle.datamaps-bubble")
			.animate({//options}, function(){
				if($(this).attr("r") > 0) {
					//debugger;
				}
			});
*/

//		d3.selectAll('circle.datamaps-bubble').transition().each("end", function() {
//			debugger;
//		});
		
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


