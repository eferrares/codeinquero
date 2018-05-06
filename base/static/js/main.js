$("body").click(function(event) {
  var container = $(".modal");
  if (!container.is(event.target) && container.has(event.target).length === 0) {
    container.closest(".modal-wrapper").addClass("closed");
  }
});

$(".open-modal").click(function(event) {
  event.preventDefault();
  event.stopPropagation();
  $($(this).attr('href')).removeClass("closed");
  const content = $(this).html();
  console.log(content);
  $('.js-modal-content').html(content);
});

$(".modal-close").click(function(event) {
  event.preventDefault();
  var container = $(this).closest(".modal");
  $(this).closest(".modal-wrapper").addClass("closed");
});
