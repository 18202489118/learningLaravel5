<?php
/**
 * Created by PhpStorm.
 * User: zhangjihe
 * Date: 2018/9/27
 * Time: 10:09
 */

function route_class()
{
    return str_replace('.', '-', Route::currentRouteName());
}

function make_excerpt($value, $length = 200)
{
    $excerpt = trim(preg_replace('/\r\n|\r|\n+/', ' ', strip_tags($value)));
    return str_limit($excerpt, $length);
}