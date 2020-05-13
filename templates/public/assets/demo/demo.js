//jshint esversion: 6
type = ['primary', 'info', 'success', 'warning', 'danger'];

demo = {
  initPickColor: function() {
    $('.pick-class-label').click(function() {
      var new_class = $(this).attr('new-class');
      var old_class = $('#display-buttons').attr('data-class');
      var display_div = $('#display-buttons');
      if (display_div.length) {
        var display_buttons = display_div.find('.btn');
        display_buttons.removeClass(old_class);
        display_buttons.addClass(new_class);
        display_div.attr('data-class', new_class);
      }
    });
  },

  initDocChart: function() {
    chartColor = "#FFFFFF";

    // General configuration for the charts with Line gradientStroke
    gradientChartOptionsConfiguration = {
      maintainAspectRatio: false,
      legend: {
        display: false
      },
      tooltips: {
        bodySpacing: 4,
        mode: "nearest",
        intersect: 0,
        position: "nearest",
        xPadding: 10,
        yPadding: 10,
        caretPadding: 10
      },
      responsive: true,
      scales: {
        yAxes: [{
          display: 0,
          gridLines: 0,
          ticks: {
            display: false
          },
          gridLines: {
            zeroLineColor: "transparent",
            drawTicks: false,
            display: false,
            drawBorder: false
          }
        }],
        xAxes: [{
          display: 0,
          gridLines: 0,
          ticks: {
            display: false
          },
          gridLines: {
            zeroLineColor: "transparent",
            drawTicks: false,
            display: false,
            drawBorder: false
          }
        }]
      },
      layout: {
        padding: {
          left: 0,
          right: 0,
          top: 15,
          bottom: 15
        }
      }
    };

    ctx = document.getElementById('lineChartExample').getContext("2d");

    gradientStroke = ctx.createLinearGradient(500, 0, 100, 0);
    gradientStroke.addColorStop(0, '#80b6f4');
    gradientStroke.addColorStop(1, chartColor);

    gradientFill = ctx.createLinearGradient(0, 170, 0, 50);
    gradientFill.addColorStop(0, "rgba(128, 182, 244, 0)");
    gradientFill.addColorStop(1, "rgba(249, 99, 59, 0.40)");

    myChart = new Chart(ctx, {
      type: 'line',
      responsive: true,
      data: {
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "Active Users",
          borderColor: "#f96332",
          pointBorderColor: "#FFF",
          pointBackgroundColor: "#f96332",
          pointBorderWidth: 2,
          pointHoverRadius: 4,
          pointHoverBorderWidth: 1,
          pointRadius: 4,
          fill: true,
          backgroundColor: gradientFill,
          borderWidth: 2,
          data: [542, 480, 430, 550, 530, 453, 380, 434, 568, 610, 700, 630]
        }]
      },
      options: gradientChartOptionsConfiguration
    });
  },

  initDashboardPageCharts: function(data_Q) {
    //here..

    gradientChartOptionsConfigurationWithTooltipBlue = {
      maintainAspectRatio: false,
      legend: {
        display: false
      },

      tooltips: {
        backgroundColor: '#f5f5f5',
        titleFontColor: '#333',
        bodyFontColor: '#666',
        bodySpacing: 4,
        xPadding: 12,
        mode: "nearest",
        intersect: 0,
        position: "nearest"
      },
      responsive: true,
      scales: {
        yAxes: [{
          barPercentage: 1.6,
          gridLines: {
            drawBorder: false,
            color: 'rgba(29,140,248,0.0)',
            zeroLineColor: "transparent",
          },
          ticks: {
            suggestedMin: 60,
            suggestedMax: 125,
            padding: 20,
            fontColor: "#2380f7"
          }
        }],

        xAxes: [{
          barPercentage: 1.6,
          gridLines: {
            drawBorder: false,
            color: 'rgba(29,140,248,0.1)',
            zeroLineColor: "transparent",
          },
          ticks: {
            padding: 20,
            fontColor: "#2380f7"
          }
        }]
      }
    };

    gradientChartOptionsConfigurationWithTooltipPurple = {
      maintainAspectRatio: false,
      legend: {
        display: false
      },

      tooltips: {
        backgroundColor: '#f5f5f5',
        titleFontColor: '#333',
        bodyFontColor: '#666',
        bodySpacing: 4,
        xPadding: 12,
        mode: "nearest",
        intersect: 0,
        position: "nearest"
      },
      responsive: true,
      scales: {
        yAxes: [{
          barPercentage: 1.6,
          gridLines: {
            drawBorder: false,
            color: 'rgba(29,140,248,0.0)',
            zeroLineColor: "transparent",
          },
          ticks: {
            suggestedMin: 0,
            suggestedMax: 40,
            padding: 5,
            fontColor: "#9a9a9a"
          }
        }],

        xAxes: [{
          barPercentage: 1.6,
          gridLines: {
            drawBorder: false,
            color: 'rgba(225,78,202,0.1)',
            zeroLineColor: "transparent",
          },
          ticks: {
            padding: 20,
            fontColor: "#9a9a9a"
          }
        }]
      }
    };

    gradientChartOptionsConfigurationWithTooltipOrange = {
      maintainAspectRatio: false,
      legend: {
        display: false
      },

      tooltips: {
        backgroundColor: '#f5f5f5',
        titleFontColor: '#333',
        bodyFontColor: '#666',
        bodySpacing: 4,
        xPadding: 12,
        mode: "nearest",
        intersect: 0,
        position: "nearest"
      },
      responsive: true,
      scales: {
        yAxes: [{
          barPercentage: 1.6,
          gridLines: {
            drawBorder: false,
            color: 'rgba(29,140,248,0.0)',
            zeroLineColor: "transparent",
          },
          ticks: {
            suggestedMin: 50,
            suggestedMax: 110,
            padding: 20,
            fontColor: "#ff8a76"
          }
        }],

        xAxes: [{
          barPercentage: 1.6,
          gridLines: {
            drawBorder: false,
            color: 'rgba(220,53,69,0.1)',
            zeroLineColor: "transparent",
          },
          ticks: {
            padding: 20,
            fontColor: "#ff8a76"
          }
        }]
      }
    };

    gradientChartOptionsConfigurationWithTooltipGreen = {
      maintainAspectRatio: false,
      legend: {
        display: false
      },

      tooltips: {
        backgroundColor: '#f5f5f5',
        titleFontColor: '#333',
        bodyFontColor: '#666',
        bodySpacing: 4,
        xPadding: 12,
        mode: "nearest",
        intersect: 0,
        position: "nearest"
      },
      responsive: true,
      scales: {
        yAxes: [{
          barPercentage: 1.6,
          gridLines: {
            drawBorder: false,
            color: 'rgba(29,140,248,0.0)',
            zeroLineColor: "transparent",
          },
          ticks: {
            suggestedMin: 0,
            suggestedMax: 10,
            padding: 5,
            fontColor: "#9e9e9e"
          }
        }],

        xAxes: [{
          barPercentage: 1.6,
          gridLines: {
            drawBorder: false,
            color: 'rgba(0,242,195,0.1)',
            zeroLineColor: "transparent",
          },
          ticks: {
            padding: 20,
            fontColor: "#9e9e9e"
          }
        }]
      }
    };

    gradientChartOptionsConfigurationWithTooltipBlue2 = {
      maintainAspectRatio: false,
      legend: {
        display: false
      },

      tooltips: {
        backgroundColor: '#f5f5f5',
        titleFontColor: '#333',
        bodyFontColor: '#666',
        bodySpacing: 4,
        xPadding: 12,
        mode: "nearest",
        intersect: 0,
        position: "nearest"
      },
      responsive: true,
      scales: {
        yAxes: [{
          barPercentage: 1.6,
          gridLines: {
            drawBorder: false,
            color: 'rgba(0,128,255,0.0)',
            zeroLineColor: "transparent",
          },
          ticks: {
            suggestedMin: 0,
            suggestedMax: 10,
            padding: 5,
            fontColor: "#9e9e9e"
          }
        }],

        xAxes: [{
          barPercentage: 1.6,
          gridLines: {
            drawBorder: false,
            color: 'rgba(0,128,255,0.1)',
            zeroLineColor: "transparent",
          },
          ticks: {
            padding: 20,
            fontColor: "#9e9e9e"
          }
        }]
      }
    };


    gradientBarChartConfiguration = {
      maintainAspectRatio: false,
      legend: {
        display: false
      },

      tooltips: {
        backgroundColor: '#f5f5f5',
        titleFontColor: '#333',
        bodyFontColor: '#666',
        bodySpacing: 4,
        xPadding: 12,
        mode: "nearest",
        intersect: 0,
        position: "nearest"
      },
      responsive: true,
      scales: {
        yAxes: [{

          gridLines: {
            drawBorder: false,
            color: 'rgba(0,128,255,0.1)',
            zeroLineColor: "transparent",
          },
          ticks: {
            suggestedMin: 60,
            suggestedMax: 120,
            padding: 20,
            fontColor: "#9e9e9e"
          }
        }],

        xAxes: [{

          gridLines: {
            drawBorder: false,
            color: 'rgba(0,128,255,0.1)',
            zeroLineColor: "transparent",
          },
          ticks: {
            padding: 20,
            fontColor: "#9e9e9e"
          }
        }]
      }
    };

    var ctx = document.getElementById("chartLinePurple").getContext("2d");

    var gradientStroke = ctx.createLinearGradient(0, 230, 0, 50);

    gradientStroke.addColorStop(1, 'rgba(72,72,176,0.2)');
    gradientStroke.addColorStop(0.2, 'rgba(72,72,176,0.0)');
    gradientStroke.addColorStop(0, 'rgba(119,52,169,0)'); //purple colors

    var resultXY = {
      x: [],
      y: []
    };

    for(var i = 0; i < data_Q.confirmed_cases.length; i++) {
      resultXY.x.push(data_Q.confirmed_cases[i].Confirmed_Date);
      resultXY.y.push(data_Q.confirmed_cases[i].daily_Increased);
    }

    var data = {
      //labels: ['JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'],
      labels: resultXY.x,
      datasets: [{
        label: "Confirmed",
        fill: true,
        backgroundColor: gradientStroke,
        borderColor: '#d048b6',
        borderWidth: 2,
        borderDash: [],
        borderDashOffset: 0.0,
        pointBackgroundColor: '#d048b6',
        pointBorderColor: 'rgba(255,255,255,0)',
        pointHoverBackgroundColor: '#d048b6',
        pointBorderWidth: 20,
        pointHoverRadius: 4,
        pointHoverBorderWidth: 15,
        pointRadius: 4,
        data: resultXY.y,
        // data: [80, 100, 70, 80, 120, 80],
      }]
    };

    var myChart = new Chart(ctx, {
      type: 'line',
      data: data,
      options: gradientChartOptionsConfigurationWithTooltipPurple
    });


    var ctxGreen = document.getElementById("chartLineGreen").getContext("2d");

    var gradientStroke = ctx.createLinearGradient(0, 230, 0, 50);

    gradientStroke.addColorStop(1, 'rgba(66,134,121,0.15)');
    gradientStroke.addColorStop(0.4, 'rgba(66,134,121,0.0)'); //green colors
    gradientStroke.addColorStop(0, 'rgba(66,134,121,0)'); //green colors

    var resultXY = {
      x: [],
      y: []
    };

    for(var i = 0; i < data_Q.daily_Increased.length; i++) {
      resultXY.x.push(data_Q.daily_Increased[i].Confirmed_Date);
      resultXY.y.push(data_Q.daily_Increased[i].daily_Increased);
    }

    var data = {
      //labels: ['JUL', 'AUG', 'SEP', 'OCT', 'NOV'],
      labels: resultXY.x,
      datasets: [{
        label: "Daily Increased",
        fill: true,
        backgroundColor: gradientStroke,
        borderColor: '#00d6b4',
        borderWidth: 2,
        borderDash: [],
        borderDashOffset: 0.0,
        pointBackgroundColor: '#00d6b4',
        pointBorderColor: 'rgba(255,255,255,0)',
        pointHoverBackgroundColor: '#00d6b4',
        pointBorderWidth: 20,
        pointHoverRadius: 4,
        pointHoverBorderWidth: 15,
        pointRadius: 4,
        data: resultXY.y,
        //data: [90, 27, 60, 12, 80],
      }]
    };

    var myChart = new Chart(ctxGreen, {
      type: 'line',
      data: data,
      options: gradientChartOptionsConfigurationWithTooltipGreen

    });

    var ctxGreen = document.getElementById("chartLineBlue").getContext("2d");

    var gradientStroke = ctx.createLinearGradient(0, 230, 0, 50);

    gradientStroke.addColorStop(1, 'rgba(66,134,121,0.15)');
    gradientStroke.addColorStop(0.4, 'rgba(66,134,121,0.0)'); //green colors
    gradientStroke.addColorStop(0, 'rgba(66,134,121,0)'); //green colors

    var resultXY = {
      x: [],
      y: []
    };

    for(var i = 0; i < data_Q.confirmed_cases.length; i++) {
      resultXY.x.push(data_Q.confirmed_cases[i].Confirmed_Date);
      resultXY.y.push(Math.log(data_Q.confirmed_cases[i].daily_Increased));
    }

    var data = {
      //labels: ['JUL', 'AUG', 'SEP', 'OCT', 'NOV'],
      labels: resultXY.x,
      datasets: [{
        label: "Logarithmic",
        fill: true,
        backgroundColor: gradientStroke,
        borderColor: '#0080ff',
        borderWidth: 2,
        borderDash: [],
        borderDashOffset: 0.0,
        pointBackgroundColor: '#0080ff',
        pointBorderColor: 'rgba(255,255,255,0)',
        pointHoverBackgroundColor: '#0080ff',
        pointBorderWidth: 20,
        pointHoverRadius: 4,
        pointHoverBorderWidth: 15,
        pointRadius: 4,
        data: resultXY.y,
        //data: [90, 27, 60, 12, 80],
      }]
    };

    var myChart = new Chart(ctxGreen, {
      type: 'line',
      data: data,
      options: gradientChartOptionsConfigurationWithTooltipBlue2

    });


    var chart_labels = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'];
    var chart_data = [100, 70, 90, 70, 85, 60, 75, 60, 90, 80, 110, 100];


    var ctx = document.getElementById("chartBig1").getContext('2d');

    var gradientStroke = ctx.createLinearGradient(0, 230, 0, 50);

    gradientStroke.addColorStop(1, 'rgba(72,72,176,0.1)');
    gradientStroke.addColorStop(0.4, 'rgba(72,72,176,0.0)');
    gradientStroke.addColorStop(0, 'rgba(119,52,169,0)'); //purple colors
    var config = {
      type: 'line',
      data: {
        labels: chart_labels,
        datasets: [{
          label: "My First dataset",
          fill: true,
          backgroundColor: gradientStroke,
          borderColor: '#d346b1',
          borderWidth: 2,
          borderDash: [],
          borderDashOffset: 0.0,
          pointBackgroundColor: '#d346b1',
          pointBorderColor: 'rgba(255,255,255,0)',
          pointHoverBackgroundColor: '#d346b1',
          pointBorderWidth: 20,
          pointHoverRadius: 4,
          pointHoverBorderWidth: 15,
          pointRadius: 4,
          data: chart_data,
        }]
      },
      options: gradientChartOptionsConfigurationWithTooltipPurple
    };
    var myChartData = new Chart(ctx, config);
    $("#0").click(function() {
      var data = myChartData.config.data;
      data.datasets[0].data = chart_data;
      data.labels = chart_labels;
      myChartData.update();
    });
    $("#1").click(function() {
      var chart_data = [80, 120, 105, 110, 95, 105, 90, 100, 80, 95, 70, 120];
      var data = myChartData.config.data;
      data.datasets[0].data = chart_data;
      data.labels = chart_labels;
      myChartData.update();
    });

    $("#2").click(function() {
      var chart_data = [60, 80, 65, 130, 80, 105, 90, 130, 70, 115, 60, 130];
      var data = myChartData.config.data;
      data.datasets[0].data = chart_data;
      data.labels = chart_labels;
      myChartData.update();
    });


    var ctx = document.getElementById("CountryChart").getContext("2d");

    var gradientStroke = ctx.createLinearGradient(0, 230, 0, 50);

    gradientStroke.addColorStop(1, 'rgba(29,140,248,0.2)');
    gradientStroke.addColorStop(0.4, 'rgba(29,140,248,0.0)');
    gradientStroke.addColorStop(0, 'rgba(29,140,248,0)'); //blue colors


    var myChart = new Chart(ctx, {
      type: 'bar',
      responsive: true,
      legend: {
        display: false
      },
      data: {
        labels: ['USA', 'GER', 'AUS', 'UK', 'RO', 'BR'],
        datasets: [{
          label: "Countries",
          fill: true,
          backgroundColor: gradientStroke,
          hoverBackgroundColor: gradientStroke,
          borderColor: '#1f8ef1',
          borderWidth: 2,
          borderDash: [],
          borderDashOffset: 0.0,
          data: [53, 20, 10, 80, 100, 45],
        }]
      },
      options: gradientBarChartConfiguration
    });

  },

  initGoogleMaps: function(data_Q) {
    //console.log("Yeash : " + JSON.stringify(data_Q));
    var myLatlng = new google.maps.LatLng(13.736717, 100.523186);
    var mapOptions = {
      zoom: 5,
      center: myLatlng,
      scrollwheel: false, //we disable de scroll over the map, it is a really annoing when you scroll through page
      styles: [{
          "elementType": "geometry",
          "stylers": [{
            "color": "#1d2c4d"
          }]
        },
        {
          "elementType": "labels.text.fill",
          "stylers": [{
            "color": "#8ec3b9"
          }]
        },
        {
          "elementType": "labels.text.stroke",
          "stylers": [{
            "color": "#1a3646"
          }]
        },
        {
          "featureType": "administrative.country",
          "elementType": "geometry.stroke",
          "stylers": [{
            "color": "#4b6878"
          }]
        },
        {
          "featureType": "administrative.land_parcel",
          "elementType": "labels.text.fill",
          "stylers": [{
            "color": "#64779e"
          }]
        },
        {
          "featureType": "administrative.province",
          "elementType": "geometry.stroke",
          "stylers": [{
            "color": "#4b6878"
          }]
        },
        {
          "featureType": "landscape.man_made",
          "elementType": "geometry.stroke",
          "stylers": [{
            "color": "#334e87"
          }]
        },
        {
          "featureType": "landscape.natural",
          "elementType": "geometry",
          "stylers": [{
            "color": "#023e58"
          }]
        },
        {
          "featureType": "poi",
          "elementType": "geometry",
          "stylers": [{
            "color": "#283d6a"
          }]
        },
        {
          "featureType": "poi",
          "elementType": "labels.text.fill",
          "stylers": [{
            "color": "#6f9ba5"
          }]
        },
        {
          "featureType": "poi",
          "elementType": "labels.text.stroke",
          "stylers": [{
            "color": "#1d2c4d"
          }]
        },
        {
          "featureType": "poi.park",
          "elementType": "geometry.fill",
          "stylers": [{
            "color": "#023e58"
          }]
        },
        {
          "featureType": "poi.park",
          "elementType": "labels.text.fill",
          "stylers": [{
            "color": "#3C7680"
          }]
        },
        {
          "featureType": "road",
          "elementType": "geometry",
          "stylers": [{
            "color": "#304a7d"
          }]
        },
        {
          "featureType": "road",
          "elementType": "labels.text.fill",
          "stylers": [{
            "color": "#98a5be"
          }]
        },
        {
          "featureType": "road",
          "elementType": "labels.text.stroke",
          "stylers": [{
            "color": "#1d2c4d"
          }]
        },
        {
          "featureType": "road.highway",
          "elementType": "geometry",
          "stylers": [{
            "color": "#2c6675"
          }]
        },
        {
          "featureType": "road.highway",
          "elementType": "geometry.fill",
          "stylers": [{
            "color": "#9d2a80"
          }]
        },
        {
          "featureType": "road.highway",
          "elementType": "geometry.stroke",
          "stylers": [{
            "color": "#9d2a80"
          }]
        },
        {
          "featureType": "road.highway",
          "elementType": "labels.text.fill",
          "stylers": [{
            "color": "#b0d5ce"
          }]
        },
        {
          "featureType": "road.highway",
          "elementType": "labels.text.stroke",
          "stylers": [{
            "color": "#023e58"
          }]
        },
        {
          "featureType": "transit",
          "elementType": "labels.text.fill",
          "stylers": [{
            "color": "#98a5be"
          }]
        },
        {
          "featureType": "transit",
          "elementType": "labels.text.stroke",
          "stylers": [{
            "color": "#1d2c4d"
          }]
        },
        {
          "featureType": "transit.line",
          "elementType": "geometry.fill",
          "stylers": [{
            "color": "#283d6a"
          }]
        },
        {
          "featureType": "transit.station",
          "elementType": "geometry",
          "stylers": [{
            "color": "#3a4762"
          }]
        },
        {
          "featureType": "water",
          "elementType": "geometry",
          "stylers": [{
            "color": "#0e1626"
          }]
        },
        {
          "featureType": "water",
          "elementType": "labels.text.fill",
          "stylers": [{
            "color": "#4e6d70"
          }]
        }
      ]
    };

    var map = new google.maps.Map(document.getElementById("map-view-1"), mapOptions);

    var markers1 = [];
    var mapping = {};

    for(var i = 0; i < data_Q.patients_Positions.length; i++) {
      var key = data_Q.patients_Positions[i].routeID.toString();

      var info = {};
      info.stat = data_Q.patients_Positions[i].Status;
      info.confirmed = data_Q.patients_Positions[i].Confirmed_Date;

      //console.log(data_Q.patients_Positions[i].routeID);

      if(mapping.hasOwnProperty(key)) {
        mapping[key].data.push(info);
      }
      else {
        //console.log("else: " + key);
        mapping[key] = {};

        mapping[key].lat = parseFloat(data_Q.patients_Positions[i].latitude);
        mapping[key].lng = parseFloat(data_Q.patients_Positions[i].longtitude);
        mapping[key].city = data_Q.patients_Positions[i].city;
        mapping[key].province = data_Q.patients_Positions[i].province;
        mapping[key].district = data_Q.patients_Positions[i].district;

        mapping[key].data = [];
        mapping[key].data.push(info);
      }
    }

    for (let [key, value] of Object.entries(mapping)) {
      var secretMessages = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>' +
            '<div id="bodyContent">';
      var n = 0;
      for(var i = i; i <= value.data.length; i++) {
        n = i;
      }
      secretMessages += '<h4 style="color:black;">Total Patient(s): ' + n + '</h4>';

      for(var i = 0; i < value.data.length; i++) {
        let info = value.data[i];
        if(info.stat = 'A') {
          info.stat = 'Active';
        }
        else if(info.stat = 'R') {
          info.stat = 'Recovered';
        }
        else {
          info.stat = 'Dead';
        }
        secretMessages += '<p style="color:black;">' + (i+1) + ". " + '<b>Status:</b> ' + info.stat + '</p>' +
                          '<p style="color:black;">' + ' <b>Last Updated Date:</b> ' + info.confirmed + '</p>' + '<br>';
      }
      secretMessages += '<p style="color:black;"><b>' + value.district  + ', ' + value.city + ', ' + value.province + '</b></p>' +

                        '</div>'+
                        '</div>';

      var circle = {
        path: google.maps.SymbolPath.CIRCLE,
        fillColor: 'red',
        fillOpacity: 0.3,
        scale: 5 * n,
        strokeColor: 'red',
        strokeOpacity: 0.3,
        strokeWeight: 3
      };

      var latLng = new google.maps.LatLng(value.lat, value.lng);
      var marker = new google.maps.Marker({
        position: latLng,
        icon: circle,
        map: map
      });
      attachSecretMessage(marker, secretMessages);
      markers1.push(marker);
    }

    // var options = {
    //     imagePath: '../assets/img/m'
    // };
    //
    // var markerCluster = new MarkerClusterer(map, markers1, options);

    var map2 = new google.maps.Map(document.getElementById("map-view-2"), mapOptions);

    var markers2 = [];
    var mapping2 = {};

    for(var i = 0; i < data_Q.stockmask.length; i++) {
      var key2 = data_Q.stockmask[i].RouteID.toString();

      var infoMask = {};
      infoMask.maskType = data_Q.stockmask[i].Type;
      infoMask.price = data_Q.stockmask[i].Price;
      infoMask.stock = data_Q.stockmask[i].Stock;
      infoMask.id = data_Q.stockmask[i].PID;

      if(mapping2.hasOwnProperty(key2)) {
        mapping2[key2].dataMask.push(infoMask);
      }
      else {
        mapping2[key2] = {};

        mapping2[key2].lat = parseFloat(data_Q.stockmask[i].latitude);
        mapping2[key2].lng = parseFloat(data_Q.stockmask[i].longtitude);
        mapping2[key2].city = data_Q.stockmask[i].city;
        mapping2[key2].province = data_Q.stockmask[i].province;
        mapping2[key2].district = data_Q.stockmask[i].district;
        mapping2[key2].name = data_Q.stockmask[i].Name;
        mapping2[key2].date = data_Q.stockmask[i].Last_Updated_Date;

        mapping2[key2].dataMask = [];
        mapping2[key2].dataMask.push(infoMask);
      }
    }

    for(var i = 0; i < data_Q.stockhand.length; i++) {
      var key3 = data_Q.stockhand[i].RouteID.toString();

      var infoHand = {};
      infoHand.volume = data_Q.stockhand[i].Volume;
      infoHand.price = data_Q.stockhand[i].Price;
      infoHand.stock = data_Q.stockhand[i].Stock;
      infoHand.id = data_Q.stockhand[i].PID;
      infoHand.date = data_Q.stockhand[i].Last_Updated_Date;

      mapping2[key3].dataHand = [];

      if(mapping2.hasOwnProperty(key3)) {
        mapping2[key3].dataHand.push(infoHand);
      }
      else {
        mapping2[key3] = {};

        mapping2[key3].lat = parseFloat(data_Q.stockhand[i].latitude);
        mapping2[key3].lng = parseFloat(data_Q.stockhand[i].longtitude);
        mapping2[key3].city = data_Q.stockhand[i].city;
        mapping2[key3].province = data_Q.stockhand[i].province;
        mapping2[key3].district = data_Q.stockhand[i].district;
        mapping2[key3].name = data_Q.stockhand[i].Name;

        mapping2[key3].dataHand.push(infoHand);

      }

    }

    //console.log(mapping2);

    // for (let [key, value] of Object.entries(mapping2)) {
    //   var secretMessages = '';
    // }
    for (let [key, value] of Object.entries(mapping2)) {
      var secretMessagesMaskTracker = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>' +
            '<div id="bodyContent">' +
            '<h4 style="color:black;">' + value.name + '</h4>';
      for(var i = 0; i < value.dataMask.length; i++) {
        let info = value.dataMask[i];
        if(info.maskType == 'Carbon') {
          secretMessagesMaskTracker += '<p style="color:black;"><b>' + info.maskType + ' Activated' + ' Mask' + '</b> ';
        }
        else {
          secretMessagesMaskTracker += '<p style="color:black;"><b>' + info.maskType + ' Mask' + '</b> '
        }
        secretMessagesMaskTracker +=  info.price + ' Baht: ' + info.stock + ' Available' + '</p>';
      }

      for(var i = 0; i < value.dataHand.length; i++) {
        let info = value.dataHand[i];
        secretMessagesMaskTracker += '<p style="color:black;"> <b>' + 'Hand Sanitizer: </b>' + info.volume + ' ml: ' + info.price + ' Baht: ' + info.stock + ' Available' + '</p>';
      }

      secretMessagesMaskTracker += '<p style="color:black;"><b>' + 'Last Updated Date: </b>' + value.date + '</p>';

      // secretMessagesMaskTracker += '<br>' + '<p style="color:black;"><b>' + value.district  + ', ' + value.city + ', ' + value.province + '</b></p>' +

                        '</div>'+
                        '</div>';
      var latLng = new google.maps.LatLng(value.lat, value.lng);
      var marker = new google.maps.Marker({
        position: latLng,
        //icon: circle,
        map: map2
      });
      attachSecretMessage(marker, secretMessagesMaskTracker);
      markers2.push(marker);
    }

    // var options2 = {
    //     imagePath: '../assets/img/m'
    // };
    //
    // var markerCluster2 = new MarkerClusterer(map2, markers2, options2);

    },

  showNotification: function(from, align) {
    color = Math.floor((Math.random() * 4) + 1);

    $.notify({
      icon: "tim-icons icon-bell-55",
      message: "Welcome to <b>Black Dashboard</b> - a beautiful freebie for every web developer."

    }, {
      type: type[color],
      timer: 8000,
      placement: {
        from: from,
        align: align
      }
    });
  }
};

function attachSecretMessage(marker, secretMessage) {
  var infowindow = new google.maps.InfoWindow({
    content: secretMessage,
    maxWidth: 500
  });

  marker.addListener('click', function() {
    infowindow.open(marker.get('map'), marker);
  });

  marker.addListener('click', function() {
    infowindow.open(marker.get('map2'), marker);
  });

}
