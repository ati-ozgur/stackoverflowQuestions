library("EBImage")
f = system.file("images", "sample.png", package="EBImage")
img = readImage(f)
imgc = readImage(system.file("images", "sample-color.png", package="EBImage"))
display(imgc)
nuc = readImage(system.file("images", "nuclei.tif", package="EBImage"))
display(nuc)
writeImage(img, "img.jpeg", quality=85)



print(img)

img1 = img+0.5
display(img1)


img4 = img[299:376, 224:301]

imgcomb = combine(img, img*2, img*3, img*4)
display(imgcomb)


img7 = rotate(img, 30)
img8 = translate(img, c(40, 70))
img9 = flip(img)



# image filtering

flo = makeBrush(21, shape="disc", step=FALSE)^2
flo = flo/sum(flo)
imgflo = filter2(imgc, flo)


fhi = matrix(1, nc=3, nr=3)
fhi[2,2] = -8
imgfhi = filter2(imgc, fhi)
