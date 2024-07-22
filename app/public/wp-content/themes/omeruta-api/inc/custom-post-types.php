<?php

function create_labels($name) {
    $plural = $name . 's';
    return array(
        'name'                  => $plural,
        'singular_name'         => $name,
        'menu_name'             => $plural,
        'name_admin_bar'        => $name,
        'archives'              => $name . ' Archives',
        'attributes'            => $name . ' Attributes',
        'parent_item_colon'     => 'Parent ' . $name . ':',
        'all_items'             => 'All ' . $plural,
        'add_new_item'          => 'Add New ' . $name,
        'add_new'               => 'Add New',
        'new_item'              => 'New ' . $name,
        'edit_item'             => 'Edit ' . $name,
        'update_item'           => 'Update ' . $name,
        'view_item'             => 'View ' . $name,
        'view_items'            => 'View ' . $plural,
        'search_items'          => 'Search ' . $plural,
        'not_found'             => 'Not found',
        'not_found_in_trash'    => 'Not found in Trash',
        'featured_image'        => 'Featured Image',
        'set_featured_image'    => 'Set featured image',
        'remove_featured_image' => 'Remove featured image',
        'use_featured_image'    => 'Use as featured image',
        'insert_into_item'      => 'Insert into item',
        'uploaded_to_this_item' => 'Uploaded to this item',
        'items_list'            => $plural . ' list',
        'items_list_navigation' => $plural . ' list navigation',
        'filter_items_list'     => 'Filter ' . $plural . ' list',
    );
}

function register_custom_post_types() {
    $custom_post_types = array(
        'artist' => array(
            'supports' => array('editor', 'title', 'revisions', 'author', 'thumbnail'),
            'menu_icon' => 'dashicons-admin-users',
            'has_archive' => true,
            'rewrite' => array('slug' => 'artists'),
        ),
        // Add more custom post types here as needed
    );

    foreach ($custom_post_types as $post_type => $args) {
        $labels = create_labels(ucfirst($post_type));
        $defaults = array(
            'labels'              => $labels,
            'description'         => ucfirst($post_type) . ' Post Type',
            'public'              => true,
            'show_ui'             => true,
            'show_in_menu'        => true,
            'show_in_admin_bar'   => true,
            'show_in_nav_menus'   => true,
            'can_export'          => true,
            'has_archive'         => false,
            'exclude_from_search' => false,
            'publicly_queryable'  => true,
            'capability_type'     => 'post',
            'show_in_rest'        => true,
            'menu_position'       => 5,
            'supports'            => array('editor', 'title', 'revisions', 'author'),
            'taxonomies'          => array(),
            'hierarchical'        => false,
            'rest_base'           => $post_type . 's',
            'rest_controller_class' => 'WP_REST_Posts_Controller',
        );

        $config = array_merge($defaults, $args);
        register_post_type($post_type, $config);
    }
}
add_action('init', 'register_custom_post_types', 0);

function edit_custom_post_type_slugs($post_link, $post, $leavename) {
    if ($post->post_status != 'publish') {
        return $post_link;
    }

    $post_types_to_edit = array('artist'); // Add more post types here as needed

    if (in_array($post->post_type, $post_types_to_edit)) {
        $post_link = str_replace('/' . $post->post_type . '/', '/', $post_link);
    }

    return $post_link;
}
add_filter('post_type_link', 'edit_custom_post_type_slugs', 10, 3);

function parse_custom_post_type_requests($query) {
    $post_types = array('post', 'page', 'artist'); // Add more post types here as needed

    if (!$query->is_main_query() || count($query->query) != 2 || !isset($query->query['page'])) {
        return;
    }

    if (!empty($query->query['name'])) {
        $query->set('post_type', $post_types);
    }
}
add_action('pre_get_posts', 'parse_custom_post_type_requests');