<?php
ini_set('error_reporting', E_STRICT);

// Include necessary files
require_once 'inc/custom-post-types.php';
require_once 'inc/rest-api.php';
require_once 'inc/blocks.php';
require_once 'inc/admin.php';
require_once 'inc/hooks.php';

// Helper functions
require_once 'helpers/service.php';
require_once 'helpers/contents.php';
require_once 'helpers/blocks.php';

/**
 * Omeruta API functions and definitions
 *
 * @package Omeruta_API
 * @since 1.0.0
 */

if (!function_exists('omeruta_api_setup')) :
    function omeruta_api_setup() {
        add_theme_support('automatic-feed-links');
        add_theme_support('title-tag');
        add_theme_support('post-thumbnails');
        add_theme_support('align-wide');
        add_theme_support('responsive-embeds');
    }
endif;
add_action('after_setup_theme', 'omeruta_api_setup');

define('ALL_POST_TYPES', array(
    'page',
    'artists',
    'post',
));

// CORS Headers
function add_cors_http_header() {
    $allowed_origins = array(
        'https://www.camart.es',
        'http://localhost:3000'
    );

    if (isset($_SERVER['HTTP_ORIGIN']) && in_array($_SERVER['HTTP_ORIGIN'], $allowed_origins)) {
        header("Access-Control-Allow-Origin: " . $_SERVER['HTTP_ORIGIN']);
    }
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
    header('Access-Control-Allow-Credentials: true');
}
add_action('init', 'add_cors_http_header');

function allow_cors_for_images($headers) {
    $allowed_origins = array(
        'https://www.camart.es',
        'http://localhost:3000'
    );

    if (isset($_SERVER['HTTP_ORIGIN']) && in_array($_SERVER['HTTP_ORIGIN'], $allowed_origins)) {
        $headers['Access-Control-Allow-Origin'] = $_SERVER['HTTP_ORIGIN'];
    }
    return $headers;
}
add_filter('wp_headers', 'allow_cors_for_images');