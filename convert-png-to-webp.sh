RESOLUTIONS=(2560 1440 1024 768 425 320)
IMAGES=$(ls *.png)

for r in ${RESOLUTIONS[*]};
  do
    for i in ${IMAGES[*]};
      do 
        convert $i -resize ${r}x dump/${r}_${i}.webp;
        convert $i -resize ${r}x dump/${r}_${i}.jpg;
      done;
 done;
