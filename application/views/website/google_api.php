<script src="<?php echo base_url() ?>/public/assets/js/jquery-2.1.1.min.js"></script>
<script src="http://maps.google.com/maps?file=api&v=2&key=ABQIAAAA7j_Q-rshuWkc8HyFI4V2HxQYPm-xtd00hTQOC0OXpAMO40FHAxT29dNBGfxqMPq5zwdeiDSHEPL89A" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        GOOGLE.init();
    });
    var GOOGLE = {
        geocoder: null,
        myAddress: null,
        G_geocoder: new GClientGeocoder(),
        location1: null,
        location2: null,
        init: function () {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(GOOGLE.successFunction, GOOGLE.errorFunction);
            }
            GOOGLE.geocoder = new google.maps.Geocoder();
        },
        errorFunction: function () {
            alert("Geocoder failed");
        },
        successFunction: function (position) {
            var lat = position.coords.latitude;
            var lng = position.coords.longitude;
            GOOGLE.codeLatLng(lat, lng)
        },
        codeLatLng: function (lat, lng) {
            var latlng = new google.maps.LatLng(lat, lng);
            GOOGLE.geocoder.geocode({'latLng': latlng}, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    console.log(results)
                    if (results[1]) {
                        GOOGLE.myAddress = results[0].formatted_address;
                        GOOGLE.showLocation();
                    } else {
                        alert("No results found");
                    }
                } else {
                    alert("Geocoder failed due to: " + status);
                }
            });
        },
        showLocation: function () {
            alert(GOOGLE.myAddress);
            GOOGLE.G_geocoder.getLocations(GOOGLE.myAddress, function (response) {
                if (!response || response.Status.code != 200)
                {
                    alert("Sorry, we were unable to geocode the first address");
                }
                else
                {
                    GOOGLE.location1 = {lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address};
                    GOOGLE.G_geocoder.getLocations("Cho Ben Thanh", function (response) {
                        if (!response || response.Status.code != 200)
                        {
                            alert("Sorry, we were unable to geocode the second address");
                        }
                        else
                        {
                            GOOGLE.location2 = {lat: response.Placemark[0].Point.coordinates[1], lon: response.Placemark[0].Point.coordinates[0], address: response.Placemark[0].address};
                            GOOGLE.calculateDistance();
                        }
                    });
                }
            });
        },
        calculateDistance: function ()
        {
            try
            {
                var glatlng1 = new GLatLng(GOOGLE.location1.lat, GOOGLE.location1.lon);
                var glatlng2 = new GLatLng(GOOGLE.location2.lat, GOOGLE.location2.lon);
                var miledistance = glatlng1.distanceFrom(glatlng2, 3959).toFixed(1);
                var kmdistance = (miledistance * 1.609344).toFixed(1); console.log(kmdistance);
                

            }
            catch (error)
            {
                alert(error);
            }
        }
    }
</script>