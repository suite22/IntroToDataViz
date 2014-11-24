(function() {
	var startColor = currentColor = "#3399ff", 
		highlightColor = "#cc0000",
		minRadius = currentRadius = 1,
		maxSampleSize = 5000,
		mapPath = "data/cities.json",
		bubbleChangeInterval,
		cityInput = d3.select("#city");
		cache = {
			data: [],
			searchText: ""
		};

	// attempt to retrieve previous session value
	cityInput.attr("value", getSearchText());

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
			borderColor: startColor,
			borderWidth: 1,
			fillColor: startColor,
			fillOpacity: 0.2,	
			highlightFillColor: highlightColor,
			highlightBorderColor: highlightColor,			
			highlightFillOpacity: 0.5,
			highlightOnHover: true,
			popupOnHover: true
		},
		done: initializeEvents		 
	});
	
	var jsonCities = d3.json(mapPath, function(data) {
		// format the data for the topojson format
		var allCities = formatToDataMaps(data),
			refreshingMap = false;
	 
	 	// update bubbles on map
		filterCities(allCities, cityInput.attr("value"));

		// event handler for when city name is changed
		cityInput.on("input", function() {
			var self = this;
			
			// restart color changer
			resetBubbleColorChange();
			
			// prevents the map from being repeatedly refreshed when multiple input events
			// are fired in a short amount of time
			if(!refreshingMap) {
				refreshingMap = true;
				setTimeout(function() {
					filterCities(allCities, self.value);
					refreshingMap = false;
				}, 700);
			}
		});
	});

	/*** Functions ***/
	
	/* updates the data to only show cities beginning with "beginsWith" */
	function filterCities(data, beginsWith) {
		var timer = new Timer();
		
		setSearchText(beginsWith);
		
		if(beginsWith && beginsWith.length > 0) {
			// check to see if we can re-use cached data
			if(cache.data.length > 0 && 
					beginsWith.indexOf(cache.searchText) == 0 && 
					cache.data.length < maxSampleSize) data = cache.data;
		
			// store search text
			cache.searchText = beginsWith.toLowerCase();
			
			// we have a city search string
			cache.data = sampleData(
				_.filter(data, function(row) {
					var city = row.city.toLowerCase();
					return (city.indexOf(cache.searchText) == 0);
				})
			);
		} else {
			// empty city search, sample from all data
			cache.searchText = "";
			cache.data = sampleData(data);
		}

		// refresh bubbles on map	
		updateDataMap(cache.data);
		
		// update text stats at bottom of map		
		updateStats(cache.data, timer);	
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

	/* restarts interval timer to change the color of bubbles on the map */
	function resetBubbleColorChange() {
		var colorScale = d3.scale.linear().domain([1,50]).range([startColor, "#cc00cc"]);

		// clear interval if it was already set
		if(bubbleChangeInterval) clearInterval(bubbleChangeInterval);
		
		// restart interval
		bubbleChangeInterval = setInterval(function() {
				var random = Math.floor((Math.random()*50)+1);

				currentColor = colorScale(random);
				console.log("change bubble color to: " + currentColor);
				
				// update defaults for new bubbles that are drawn
				map.options.bubblesConfig.borderColor = currentColor;
				map.options.bubblesConfig.fillColor = currentColor;

				d3.selectAll("circle.datamaps-bubble:not(.highlight)")
					.transition()
					.duration(2000)
					.style("fill", currentColor)
					.style("stroke", currentColor);
			}, 3000);
	}

	/* reduces dataset size, so as not to overwhelm the map with too many data points */
	function sampleData(data) {
		// todo: try to add population
		return _.sample(data, maxSampleSize);
	}
	
	/* calls the DataMap library to refresh the bubbles on map */
	function updateDataMap(data) {
		var radiusScale = d3.scale.pow().exponent(.2)
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
	
	function getSearchText() {
		if(typeof(Storage) !== "undefined") {
			// code if HTML5 sessionStorage is supported by browser
			if(sessionStorage.searchText) {
				return sessionStorage.searchText;
			}
		}	
		return "";
	}
	
	function setSearchText(text) {
		if(typeof(Storage) !== "undefined") {
			// code if HTML5 sessionStorage is supported by browser
			if(!text) text = "";
			sessionStorage.searchText = text;
		}		
	}
	
	/* Events */
	function initializeEvents(datamap) {
		datamap.svg.selectAll('.datamaps-subunit').on('click', function(geo) {
			console.log(geo.properties.name);
		});
		
		d3.select("body").on("mousemove", function() {
			resetBubbleColorChange();
		});
		
		resetBubbleColorChange();
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


