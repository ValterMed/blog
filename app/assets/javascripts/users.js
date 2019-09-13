function changeToDesactivate (userId) {
  event.preventDefault();
  $.ajax({
    url: `/users/${userId}/inactive`,
    method: 'PUT',
    success: function(respuesta) {
      console.log("respuesta");
      $(`.${userId}-state`).text('FALSE');
      $(`.${userId}-inactive`).hide();
      $(`.${userId}-active`).show();
    },
    error: function() {
      console.log("Informacion no disponible");
    }
  });
}

function changeToActivate (userId) {
  event.preventDefault();
  $.ajax({
    url: `/users/${userId}/active`,
    method: 'PUT',
    success: function(respuesta) {
      console.log("respuesta");
      $(`.${userId}-state`).text('TRUE');
      $(`.${userId}-active`).hide();
      $(`.${userId}-inactive`).show();
    },
    error: function() {
      console.log("Informacion no disponible");
    }
  });
}

window.onload = function () {
  $("td#false-inactive").hide();
  $("td#true-active").hide(); 
}