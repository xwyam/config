# mp3 tag
find . -iname "*.mp3" -execdir mid3iconv -e gbk {} \;
