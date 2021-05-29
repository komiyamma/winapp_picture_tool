cd C:\usr\waifu2x-caffe
set temp_dir_waifu2x=%~dp1
set temp_file_waifu2x=%~nx1
set temp_pref_waifu2x=2x_
set temp_outf_waifu2x=%temp_dir_waifu2x%%temp_pref_waifu2x%%temp_file_waifu2x%
waifu2x-caffe-cui.exe -i %1 -o %temp_outf_waifu2x% -p cpu -m noise_scale --scale_ratio 2.0 --noise_level 0 -y upconv_7_anime_style_art_rgb 
OptIPng -strip all -o 7 %temp_outf_waifu2x%