# DCT-LSB
Repository for Multimedia &amp; comp. visual. project 

## Launching project

!! Mathlab toolbox are required to launch the project which are not include in standart matlab version !!

1. Configure matlab with mathab toolbox
2. Clone the repository
```bash
git clone https://github.com/czomo/DCT-LSB.git
```
3. Import project to matlab
4. In order to execute DCT watermarking enter

```bash
dct_wtmark('./image/<image which is gonna be watermarked>','./image_wmark/<patter used to watermarking>')
```
Example
```bash
dct_wtmark('./image/lena.jpg','./image_wmark/bing.jpg')
```
5. In order to execute LSB watermarking enter

```bash
dct_wtmark('./image/<image which is gonna be watermarked>','./image_wmark/<patter used to watermarking>')
```

Example
```bash
lsb_wtmark('./image/lena.jpg','./image_wmark.jpg')
```




## Structure of the project
- /image contains photos which are to watermarked
- /image_result outut directory with ready watermarked images
- /image_wmark pattern according to which protos are gonna be watermark
- psnr.m - psnr method which is responsible for computing peak signal-to-noise ratio 
- dct_wtmark.m responsible for inserting and and processing DCT watermarking
- dct_exwmark.m- transforming image into binary form,adding significant bits and finally exporting it
- lsb_exwmark.m responsible for processing LSB waterwarking, file handling
- lsb_wtmark.m processing image acording to LSB method

## How the watermarking based on DCT watermaking
- image is imported 
- transforming image to gray scale imgage
- resizing image to resolution 512x512
- image is divided to 8x8 blocks
- watermark pattern is divaded in the same blocks of image
- image and patern are forming in row of 32 by 8x8 elements
- extracting watermark
- formating colums into 32x32 matrix
- inseritng colums back into blocks
- recombining blocks into full image
- displaying plot of image, watermark pattern, final resoult image


