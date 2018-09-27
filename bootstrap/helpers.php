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