<?php

/**
 * A Contents class containing functions that can be used for generating content particles response
 **/

class HCMS_Contents
{
    public static function format_artist_data($artist) {
        $acf_image = get_field("artist_image", $artist->ID);
        $featured_image = get_the_post_thumbnail_url($artist->ID, 'full');
        $image_url = $acf_image ?: $featured_image ?: null;

        return array(
            'id' => $artist->ID,
            'name' => $artist->post_title,
            'content' => $artist->post_content,
            'shortBio' => get_field('short_bio', $artist->ID),
            'fullBio' => get_field('full_bio', $artist->ID),
            'imageUrl' => $image_url,
            'social' => array(
                'instagram' => get_field('instagram', $artist->ID) ?: '',
                'facebook' => get_field('facebook', $artist->ID) ?: '',
                'twitter' => get_field('twitter', $artist->ID) ?: '',
                'spotify' => get_field('spotify', $artist->ID) ?: '',
            ),
        );
    }

    // Function to format post data
    public static function format_post_data($post) {
        $featured_image = get_the_post_thumbnail_url($post->ID, 'full');

        return array(
            'id' => $post->ID,
            'title' => $post->post_title,
            'postContent' => $post->post_content,
            'excerpt' => get_the_excerpt($post),
            'date' => get_the_date('c', $post),
            'modified' => get_the_modified_date('c', $post),
            'slug' => $post->post_name,
            'image' => $featured_image ?: null,
            'categories' => wp_get_post_categories($post->ID, array('fields' => 'names')),
            'tags' => wp_get_post_tags($post->ID, array('fields' => 'names')),
            'author' => get_the_author_meta('display_name', $post->post_author),
        );
    }
}
