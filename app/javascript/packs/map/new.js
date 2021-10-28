if (navigator.geolocation) {
  navigator.geolocation.getCurrentPosition(

    function(position){
      const data = {
        latitude: position.coords.latitude,
        longitude: position.coords.longitude,
      };
      $.ajax({
          url: "/maps/new",
          type: "GET",
          dataType: 'html',
          async: true,
          data,
          success: html => {
            console.log(`response: ${html}`);
          },
          error: (xhr,  textStatus, errorThrown) => {
            console.log('xhr:');
            console.log(xhr);
            console.log(`textStatus: ${textStatus}`);
            console.log(`errorThrown: ${errorThrown}`);
          }
      });
    }
  )
}