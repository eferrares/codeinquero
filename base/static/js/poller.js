$(document).ready(function () {
  var $grid = $('#grid');

  function getLastPostId() {
    return document.querySelector('.post').dataset.id;
  }

  function fetchNewPosts(lastPostId) {
    return $.get(document.location.pathname + '/new_posts?greater_than=' + lastPostId);
  }

  function removeOldPosts(count) {
    var posts = document.querySelectorAll('.post');

    for (var i = 1; i <= count; i++) {
      var el = posts[posts.length - i];
      el.parentNode.removeChild(el);
    }
  }

  function createPostElement(post) {
    if (post.file) {
      return $('<div class="isotope-item post" data-id="' + post.id + '">').append(
        $('<div class="gallery-list-item"></div>').append(
          $('<div class="gl-item-image-wrap"></div>').append(
            $('<a href="#" class="gl-item-image-inner"></a>').append(
              $('<img src="' + post.file + '" class="gl-item-image" />')
            )
          )
        ).append(
          $('<div class="gl-item-info"></div>').append(
            $('<div class="gl-item-caption">').append(
              $('<h2 class="gl-item-title">').append(
                $('<a href="#">' + post.text + '</a>')
              )
            ).append(
              $('<span class="gl-item-category">').append(
                $('<a href="#">' + post.user_display_name + '</a>')
              )
            )
          )
        )
      );
    } else {
      return $('<div class="isotope-item post" data-id="' + post.id + '">').append(
        $('<div class="gallery-list-item"></div>').append(
          $('<div class="text-box">').append(
            $('<div class="gl-item-caption">').append(
              $('<h2 class="gl-item-title">').append(
                $('<a href="#">' + post.text + '</a>')
              )
            ).append(
              $('<span class="gl-item-category">').append(
                $('<a href="#">' + post.user_display_name + '</a>')
              )
            )
          )
        )
      );
    }
  }

  function addNewPosts(posts) {
    posts.forEach(function (post) {
      var el = createPostElement(post);
      $('#grid').prepend(el);
      $grid.isotope('prepended', el);
    });
  }

  function updatePosts() {
    var maxPosts = 50;
    var lastPostId = getLastPostId();

    fetchNewPosts(lastPostId)
      .done(function (response) {
        var newPosts = JSON.parse(response);

        if ($('.post').length >= maxPosts) {
          removeOldPosts(newPosts.length);
        }
        addNewPosts(newPosts);
      })
      .fail(function (err) {
        console.log(err);
      });
  }

  setInterval(updatePosts, 3000);
});
