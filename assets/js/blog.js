"use strict";
var start = 0;
var end = 3;
var post_slno = '';

var user_slno = localStorage.getItem("slno");
var user_role = localStorage.getItem("role");
var user_name = localStorage.getItem("name");

$(document).ready(function() {
    if (user_role == 'ADMIN') {
        $("#main_menu").load("templates/menu/admin_login_menu.html");
        $("#user_name").html("ADMIN");
    } else if (user_role == 'USER') {
        $("#main_menu").load("templates/menu/user_login_menu.html");
        $("#user_name").html(user_name);
    } else {
        $("#main_menu").load("templates/menu/menu.html");
    }

    get_posts(start, end);

});



//Get all blog posts from DB


$(document).on("click", "#logout_btn", function() {
    localStorage.removeItem("slno");
    localStorage.removeItem("role");

    $("#main_menu").load("templates/menu/menu.html");
    get_posts(start, end);

});

$(document).on("click", "#user_posted_comments", function() {
    $("#load-template").load("templates/user_comments.html");
});


$(document).on("click", "#all_comments", function() {
    $("#load-template").load("templates/all_comments.html");

});




$(document).on('click', '#add_post', function() {
    $("#search").val('');
    $("#load-template").load("templates/add_post.html");
});


$(document).on('click', '#blog_post', function() {
    $("#search").val('');
    get_posts(start, end);
});


//Showing single post when click on post
$(document).on('click', '.post_list_title', function() {
    var id = $(this).data('id');
    single_post(id);

});


$(document).on('click', '#user_login', function() {
    $("#load-template").load("templates/login.html");

});
$(document).on('click', '#home', function() {
    $("#load-template").load("templates/home.html");

});

$(document).on('click', '#user_register', function() {
    $("#load-template").load("templates/register.html");

});


// Post search
$("#search").keyup(function() {
    var keyword = $("#search").val();
    search_posts(keyword);

});



function get_posts(start, end) {
    $.ajax({
        url: 'ajax/get_posts.php',
        type: 'POST',
        data: {
            'start': start,
            'end': end
        },
        success: function(data) {
            var posts = JSON.parse(data);
            var str = "";
            str += '<div class="container blog-posts">';
            for (var i = 0; i < posts.length; i++) {
                str += '<div class="item mb-5"> <div class="media"> <img class="mr-3 img-fluid post-thumb d-none d-md-flex" src="' + posts[i].image + '" alt="image"> <div class="media-body"> <a href="#"><h3 class="title post_list_title mb-1" data-id=' + posts[i].slno + '>' + posts[i].title + '</h3></a> <div class="meta mb-1"><span class="date">Publicado ' + posts[i].time_ago + '</span></div><div class="intro">' + posts[i].description + '</div></div></div></div>';
                var limit = posts[i].limit;
            }
            str += '</div><nav class="blog-nav nav nav-justified my-5"> <a class="nav-link-prev nav-item nav-link d-none rounded-left" href="#">Anterior<i class="arrow-prev fas fa-long-arrow-alt-left"></i></a> <a class="nav-link-next nav-item nav-link load_more rounded" data-limit="' + limit + '">Ver mais<i class="arrow-next fas fa-long-arrow-alt-right"></i></a></nav>';


            $("#load-template").html(str);
            $(".blog-add").hide(500);
            $(".single_post").hide(500);
            $(".blog-list").show(500);

        },

    });
}


function search_posts(keyword) {
    $.ajax({
        url: 'ajax/search_posts.php',
        type: 'POST',
        data: {
            'keyword': keyword
        },
        success: function(data) {
            var posts = JSON.parse(data);
            var str = "";
            if (posts.length == 0) {
                str += '<center><h1>Nenhum resultado encontrado</h1><center>';
            } else {
                str += '<div class="container blog-posts">';
                for (var i = 0; i < posts.length; i++) {
                    str += '<div class="item mb-5 "> <div class="media"> <img class="mr-3 img-fluid post-thumb d-none d-md-flex" src="' + posts[i].image + '" alt="image"> <div class="media-body"> <a href="#"><h3 class="title post_list_title mb-1" data-id=' + posts[i].slno + '>' + posts[i].title + '</h3></a> <div class="meta mb-1"><span class="date">Publicado ' + posts[i].time_ago + '</span></div><div class="intro">' + posts[i].description + '</div></div></div></div>';
                }
                str += '</div>';
            }
            $("#load-template").html(str);
            $(".blog-list").show(500);
            $(".single_post").hide(500);
        },

    });
}




function single_post(id) {
    post_slno = id;
    $.ajax({
        url: 'ajax/single_post.php',
        type: 'POST',
        data: {
            'postid': id
        },
        success: function(data) {
            var posts = JSON.parse(data);
            var str = "";
            if (posts.length == 0) {
                str += '<center><h1>nenhum resultado encontrado</h1><center>';
            } else {
                for (var i = 0; i < posts.length; i++) {
                    str += '<div class="container"> <header class="blog-post-header"> <h2 class="title mb-2">' + posts[i].title + '</h2> <div class="meta mb-3"><span class="date">Publicado ' + posts[i].time_ago + '</span></div></header> <div class="blog-post-body"> <center> ';

                    if (posts[i].image != "http://localhost/blog/images/") {

                        str += '<figure class="blog-banner"> <a href="#"><img class="img-fluid" src="' + posts[i].image + '" alt="image" height="100px" width="200px"></a> </figure>';
                    }
                    str += '</center> ' + posts[i].description + '</div></div>';

                    if (localStorage.getItem("role") == 'ADMIN' || localStorage.getItem("role") == 'USER') {
                        str += '<div class="item m-4 pr-5 pl-5"><div class="form-group"> <label for="comment">Escreva um comentário</label> <input type="hidden" id="post_slno" value="' + posts[i].slno + '"> <textarea class="form-control" rows="3" id="comment" name="comment" required> </textarea> </div><center> <button type="submit" id="add_comment" class="btn btn-success">Salvar</button> </center></div><div id="comment_msg"></div>"';

                    }
                }
            }

            $("#load-template").html(str);
            get_reviews(id);


        },

    });
}



function get_reviews(id) {

    $.ajax({
        url: 'ajax/get_post_comments.php',
        type: 'POST',
        data: {
            post_slno: id
        },
        success: function(data) {
            var comments = JSON.parse(data);
            var str = "";
            var count = 1;
            for (var i = 0; i < comments.length; i++) {
                str += '<div id="single_post_comments"><div class="m-5 border p-4"> <h6 class="mb-3">' + comments[i].user_name + ' </h6><i>Posted on : ' + comments[i].date + ' </i> <hr> <p>' + comments[i].comment + '</p></div></div></div>';
                count++;
            }

            $("#load-template").append(str);

        }

    });

}




$(document).on("click", "#add_comment", function() {
    var comment = $("#comment").val();
    var post_slno = $("#post_slno").val();
    var user_slno = localStorage.getItem('slno');

    $.ajax({
        url: 'ajax/add_comment.php',
        type: 'POST',
        data: {
            comment: comment,
            post_slno: post_slno,
            user_slno: user_slno
        },
        success: function(data) {
            var response = JSON.parse(data);
            if (response.status == '1') {

                $("#comment_msg").html('<center><span class="badge badge-success"><h6 class="text-white">Comment added successfully! please wait for admin approval</h6> </span></center>');

            } else {
                alert("Something went wrong");
            }
        }

    });
});




$(document).on('click', '.load_more', function() {

    var data_limit = $(this).data('limit');
    start = 0;
    end = data_limit + 10;
    get_posts(start, end);
    start = 0;
    end = 10;
});