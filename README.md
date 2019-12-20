---

Aria2 with webui
---
Only 29Mb.  
Edit config file out of the image.  
Move file completed to another folder.  
(Tasks that contains more than one files will not be moved.)  

### Install
I. replace **/DOWNLOAD_DIR** and **/CONFIG_DIR** for save data, and **YOUR_SECRET_CODE** for security. Run command below  
```
docker run -d \
--name aria2-with-webui \
-p 6800:6800 \
-p 6880:80 \
-v /DOWNLOAD_DIR:/download \
-v /CONFIG_DIR:/conf \
-e SECRET=YOUR_SECRET_CODE \
xujinkai/aria2-with-webui
```
  
II. Open `http://serverip:6880/` for aria2-webui, open `http://serverip:6888/` to browse data folder.  

III. docker-compose.
```
version: "3"

services:
  aria2:
    container_name: aria2
    image: john123951/aria2-with-webui:latest
    ports:
      - 6800:6800
      - 80:80
      - 8080:8080
    environment:
      SECRET: YOUR_SECRET_CODE
    volumes:
      - /DOWNLOAD_DIR:/download:rw
      - aria2-conf:/conf

volumes:
  aria2-conf:
```


### Build:  
`sudo docker build -f Dockerfile -t xujinkai/aria2-with-webui .`  

### Link:  
https://github.com/aria2/aria2  
https://github.com/ziahamza/webui-aria2  

https://github.com/acgotaku/BaiduExporter  
