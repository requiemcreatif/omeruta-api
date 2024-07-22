<?php
ini_set('error_reporting', E_STRICT);
ini_set('memory_limit', -1);

// Import the HCMS_Contents class
require_once __DIR__ . '/../helpers/contents.php';

function register_routes() {
    register_rest_route('omeruta/v1', '/artists', array(
        'methods' => 'GET',
        'callback' => 'get_all_artists',
        'permission_callback' => '__return_true'
    ));

    register_rest_route('omeruta/v1', '/artists/(?P<id>\d+)', array(
        'methods' => 'GET',
        'callback' => 'get_single_artist',
        'permission_callback' => '__return_true'
    ));

    register_rest_route('omeruta/v1', '/artists', array(
        'methods' => 'POST',
        'callback' => 'create_artist',
        'permission_callback' => 'is_user_logged_in'
    ));

    register_rest_route('omeruta/v1', '/artists/(?P<id>\d+)', array(
        'methods' => 'PUT',
        'callback' => 'update_artist',
        'permission_callback' => 'is_user_logged_in'
    ));

    // Route for fetching all posts
    register_rest_route('omeruta/v1', '/posts', array(
        'methods' => 'GET',
        'callback' => 'get_all_posts',
        'permission_callback' => '__return_true'
    ));


}
add_action('rest_api_init', 'register_routes');

function get_all_artists($request) {
    $args = array(
        'post_type' => 'artist',
        'posts_per_page' => $request->get_param('per_page') ?: -1,
        'paged' => $request->get_param('page') ?: 1,
        'orderby' => $request->get_param('orderby') ?: 'title',
        'order' => $request->get_param('order') ?: 'ASC',
    );

    if ($request->get_param('name')) {
        $args['s'] = sanitize_text_field($request->get_param('name'));
    }

    if ($request->get_param('category')) {
        $args['tax_query'] = array(
            array(
                'taxonomy' => 'category',
                'field' => 'slug',
                'terms' => sanitize_text_field($request->get_param('category')),
            ),
        );
    }

    $artists = get_posts($args);
    $data = array_map([HCMS_Contents::class, 'format_artist_data'], $artists);
    return new WP_REST_Response($data, 200);
}

function get_single_artist($request) {
    $artist_id = (int) $request['id'];
    $artist = get_post($artist_id);

    if (empty($artist) || $artist->post_type !== 'artist') {
        return new WP_Error('no_artist', 'Artist not found', array('status' => 404));
    }

    return new WP_REST_Response(HCMS_Contents::format_artist_data($artist), 200);
}

function create_artist($request) {
    //(existing code...test tp push rest)

    $artist = get_post($artist_id);
    return new WP_REST_Response(HCMS_Contents::format_artist_data($artist), 201);
}

function update_artist($request) {
    //.. (existing code) 

    $updated_artist = get_post($artist_id);
    return new WP_REST_Response(HCMS_Contents::format_artist_data($updated_artist), 200);
}

// Function to fetch all posts
function get_all_posts($request) {
    $args = array(
        'post_type' => 'post',
        'posts_per_page' => $request->get_param('per_page') ?: -1,
        'paged' => $request->get_param('page') ?: 1,
        'orderby' => $request->get_param('orderby') ?: 'date',
        'order' => $request->get_param('order') ?: 'DESC',
    );

    if ($request->get_param('search')) {
        $args['s'] = sanitize_text_field($request->get_param('search'));
    }

    if ($request->get_param('category')) {
        $args['category_name'] = sanitize_text_field($request->get_param('category'));
    }

    $posts = get_posts($args);
    $data = array_map([HCMS_Contents::class, 'format_post_data'], $posts);
    return new WP_REST_Response($data, 200);
}

