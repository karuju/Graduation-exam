document.addEventListener("DOMContentLoaded", function() {
  document.querySelector("form").addEventListener("submit", function() {
    var myModal = new bootstrap.Modal(document.getElementById('loadingModal'), {
      backdrop: 'static',
      keyboard: false
    });
    myModal.show();
  });

  document.addEventListener("ajax:complete", function() {
    var myModal = bootstrap.Modal.getInstance(document.getElementById('loadingModal'));
    myModal.hide();
  });
});