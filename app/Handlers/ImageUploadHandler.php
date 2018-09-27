<?php
/**
 * Created by PhpStorm.
 * User: zhangjihe
 * Date: 2018/9/27
 * Time: 15:23
 */

namespace App\Handlers;

use Image;
class ImageUploadHandler
{
    //只允许以下后缀名的图片上传
    protected $allowed_ext = ["png", "jpg", "gif", 'jpeg'];

    public function save($file, $folder, $file_prefix, $max_width)
    {
        //构建存储文件夹规则，值如 uploads/images/avatars/201709/21/
        $folder_name = "uploads/images/$folder/" . date("Ym", time()) . '/' . date
            ("d", time());
        // 文件具体存储的物理路径 `public_path()` 获取的是 `public` 文件夹的物理路径。
        // 值如: /home/vagrant/Code/larabbs/public/uploads/images/avatars/201709/21/
        $upload_path = public_path() . '/' . $folder_name;
        // 获取文件的后缀名，因图片重简体版里黏贴时后缀名为空，所以吃出确保后缀一直存在
        $extension = strtolower($file->getClientOriginalExtension()) ?: 'png';
        // 拼接文件名，加前缀时为了增加辨析度，前缀可以时相关模型的ID
        // 值如：1_1493521050_7BVc9v9ujP.png
        $filename = $file_prefix . '_' . time() . '_' . str_random(10) . '.' . $extension;
        // 如果上传的不是图片讲终止操作
        if (!in_array($extension, $this->allowed_ext)) {
            return false;
        }
        // 讲图片移动到我们的目标存储路径
        $file->move($upload_path, $filename);
        if ($max_width && $extension != 'gif') {
            // 此类中封装的函数，用于裁剪图片
            $this->reduseSize($upload_path . '/' . $filename, $max_width);
        }
        return [
            'path' => config('app.url') . "/$folder_name/$filename"
        ];
    }

    public function reduseSize($file_path, $max_width)
    {
        //先实例化， 传参时磁盘的物理路径
        $image = Image::make($file_path);
        // 进行大小调整操作
        $image->resize($max_width, null, function ($constraint) {
            // 设定宽度 $max_width，高度等比例双方缩放
            $constraint->aspectRatio();
            //防止裁图时 图片尺寸变大
            $constraint->upsize();
        });
        //对图片修改后进行保存
        $image->save();
    }
}