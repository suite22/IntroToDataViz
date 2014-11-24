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
			datamap.svg.selectAll('.datamaps-subunit').on('click', function(geo) {
				alert(geo.properties.name);
			});
		}		 
	});
	
	map.addPlugin('bubbles2', handleBubbles2);

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
		return _.map(data, function(row) {
			return {
				latitude: row.la,
				longitude: row.lo,
				city: row.ci,
				state: row.st,
				radius: currentRadius
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
	
		map.bubbles2(data, {
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

	function endall(transition, callback) { 
		var n = 0; 
		transition 
			.each(function() { ++n; }) 
			.each("end", function() { if (!--n) callback.apply(this, arguments); }); 
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

	/* handleBubbles2 */
  function handleBubbles2 (layer, data, options ) {
    var self = this,
        fillData = this.options.fills,
        svg = this.svg;

	debugger;

    if ( !data || (data && !data.slice) ) {
      throw "Datamaps Error - bubbles must be an array";
    }

    var bubbles = layer.selectAll('circle.datamaps-bubble').data( data, JSON.stringify );

    bubbles
      .enter()
        .append('svg:circle')
        .attr('class', 'datamaps-bubble')
        .attr('cx', function ( datum ) {
        		if(!self.latLngToXY(datum.latitude, datum.longitude)) debugger;
          return self.latLngToXY(datum.latitude, datum.longitude)[0];
        })
        .attr('cy', function ( datum ) {
          return self.latLngToXY(datum.latitude, datum.longitude)[1];
        })
        .attr('r', 0) //for animation purposes
        .attr('data-info', function(d) {
          return JSON.stringify(d);
        })
        .style('stroke', options.borderColor)
        .style('stroke-width', options.borderWidth)
        .style('fill-opacity', options.fillOpacity)
        .style('fill', function ( datum ) {
          var fillColor = fillData[ datum.fillKey ];
          return fillColor || fillData.defaultFill;
        })
        .on('mouseover', function ( datum ) {
          var $this = d3.select(this);

          if (options.highlightOnHover) {
            //save all previous attributes for mouseout
            var previousAttributes = {
              'fill':  $this.style('fill'),
              'stroke': $this.style('stroke'),
              'stroke-width': $this.style('stroke-width'),
              'fill-opacity': $this.style('fill-opacity')
            };

            $this
              .style('fill', options.highlightFillColor)
              .style('stroke', options.highlightBorderColor)
              .style('stroke-width', options.highlightBorderWidth)
              .style('fill-opacity', options.highlightFillOpacity)
              .attr('data-previousAttributes', JSON.stringify(previousAttributes));
          }

          if (options.popupOnHover) {
            self.updatePopup($this, datum, options, svg);
          }
        })
        .on('mouseout', function ( datum ) {
          var $this = d3.select(this);

          if (options.highlightOnHover) {
            //reapply previous attributes
            var previousAttributes = JSON.parse( $this.attr('data-previousAttributes') );
            for ( var attr in previousAttributes ) {
              $this.style(attr, previousAttributes[attr]);
            }
          }

          d3.selectAll('.datamaps-hoverover').style('display', 'none');
        })
        .transition().duration(400)
          .attr('r', function ( datum ) {
            return datum.radius;
          });

    bubbles.exit()
      .transition()
        .attr("r", 0)
        .remove();

  }


