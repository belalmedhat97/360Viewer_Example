# 360Viewer_Example

In this example it show how to make 360 images viewer based on 36 images for one product in different angles and swipe to see different area's of the product 
## API
I used online API creater: https://designer.mocky.io/ to create simple api which response contains all images  
and used https://freeimage.host/ to host 36 images of one product 

created API :https://run.mocky.io/v3/9e857634-f4e3-4474-8e6a-75bef1bf1ac3
 
### Response

``` 
{
    "success": 1,
    "error": [],
    "data": [
        "https://iili.io/dwB092.jpg",
        "https://iili.io/dwBc8l.jpg",
        "https://iili.io/dwBYFf.jpg",
        "https://iili.io/dwBaa4.jpg",
        "https://iili.io/dwB1uS.jpg",
        "https://iili.io/dwBEw7.jpg",
        "https://iili.io/dwBGt9.jpg",
        "https://iili.io/dwBVne.jpg",
        "https://iili.io/dwBWMu.jpg",
        "https://iili.io/dwBX6b.jpg",
        "https://iili.io/dwBjFj.jpg",
        "https://iili.io/dwBwcx.jpg",
        "https://iili.io/dwBN8Q.jpg",
        "https://iili.io/dwBe9V.jpg",
        "https://iili.io/dwBkAB.jpg",
        "https://iili.io/dwBvwP.jpg",
        "https://iili.io/dwB8t1.jpg",
        "https://iili.io/dwBgMg.jpg",
        "https://iili.io/dwBUoF.jpg",
        "https://iili.io/dwBrPa.jpg",
        "https://iili.io/dwB6KJ.jpg",
        "https://iili.io/dwBPcv.jpg",
        "https://iili.io/dwBiSR.jpg",
        "https://iili.io/dwBL9p.jpg",
        "https://iili.io/dwBQAN.jpg",
        "https://iili.io/dwBZNI.jpg",
        "https://iili.io/dwBttt.jpg",
        "https://iili.io/dwBboX.jpg",
        "https://iili.io/dwBmVn.jpg",
        "https://iili.io/dwBpPs.jpg",
        "https://iili.io/dwC9KG.jpg",
        "https://iili.io/dwCHlf.jpg",
        "https://iili.io/dwCJS4.jpg",
        "https://iili.io/dwC2Hl.jpg",
        "https://iili.io/dwC3R2.jpg",
        "https://iili.io/dwCFNS.jpg"
    ]
}
```
## pods
| Pod  | Usage |
| ------------- | ------------- |
| [Alamofire](https://github.com/Alamofire/Alamofire)  | used for Networking and make requests to API  |
| [SDWebImage](https://github.com/SDWebImage/SDWebImage) | used to change url string to UIImage to view in UIImageView  |
