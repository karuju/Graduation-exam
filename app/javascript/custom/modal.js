document.addEventListener("turbo:load", function() {
  var form = document.querySelector("form");
  if (form) {
    form.addEventListener("submit", function() {
      var myModal = new bootstrap.Modal(document.getElementById('loadingModal'), {
        backdrop: 'static',
        keyboard: false
      });
      myModal.show();
    });
  }
  //
  //document.addEventListener("turbo:load", function() {
  //  var myModal = bootstrap.Modal.getInstance(document.getElementById('loadingModal'));
  //  myModal.hide();
  //});
})