rem del ..\data\*.* /q /f
rem copy dist\esptest\*.gz ..\data /y
del dist\*.css
del dist\*.html
del dist\*.js
del dist\*.txt
mkspiffs -c dist -p 256 -b 8192 -s 1028096 out.spiffs
esptool -cd nodemcu -cb 921600 -cp COM3 -ca 0x300000 -cf out.spiffs