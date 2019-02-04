ffmpeg -y                      \
  -loop 1 -t 46 -i 1-8.png     \
  -loop 1 -t 27 -i Refrain.png \
  -loop 1 -t 30 -i 18-26.png   \
  -loop 1 -t 28 -i Refrain.png \
  -loop 1 -t 29 -i 36-43.png   \
  -loop 1 -t 27 -i Refrain.png \
  -loop 1       -i 52-58.png   \
  -i das.mp3 \
  -filter_complex "concat=n=7" -shortest  \
  -c:v libx264 \
  -pix_fmt yuv420p \
  Ewig-dankbar.mp4

# -c:a aac \
# -c:v libx264 -pix_fmt yuv420p -c:a aac video.mp4
