// (function() {
    var map = new Datamap({
         element: document.getElementById("usmap"),
         scope:"usa",
         geographyConfig: {
              popupOnHover:false,
              highlightOnHover:false
         },
         bubbleConfig: {
              borderColor:'#35A4FF',
              highlightFillOpacity:0.25
         }
    });

    var jsonCities = d3.json("data/cities.json", function(data) {
        var timer = new Timer().start(),
            allCities = [],
            cities = [];
    
        allCities = _.map(data, function(row) {
            return {
                latitude: row.la,
                longitude: row.lo,
                city: row.ci,
                radius: 2
            }
        });
     
        cities = _.sample(allCities, 1000);

        updateMap(cities);
    
        timer.stop();
        updateStats();

        d3.select("#city").on("input", function() {
            var searchCity = this.value.toLowerCase();
            timer.reset().start();

            cities = _.sample(
                _.filter(allCities, function(row) {
                    var city = row.city.toLowerCase();
                    return (city.indexOf(searchCity) == 0);
                })
            , 1000);
        
            updateMap(cities);
            timer.stop();
            updateStats();
        });

        function updateStats() {
            d3.selectAll(".execution_time").text(timer.time);
            d3.selectAll(".record_count").text(cities.length);
        }
    });

    /* Functions */
    function updateMap(data) {
        map.bubbles(data, {
            popupTemplate: function (geo, d) {
                return ['<div class="hoverinfo">' + d.city,
                '</div>'].join('');
            }
        });
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
// })();