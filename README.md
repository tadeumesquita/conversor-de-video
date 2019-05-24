# Conversor de Vídeo
### Script para converter videos no Linux

O script é usado para converter vídeos gravados através Adobe Media Encoder em .f4v para .mp4

Para isso é usado o programa [ffmpeg](https://ffmpeg.org/)

'''bash
ffmpeg -i arquivo-original -vcodec copy -acodec copy -loglevel debug -report arquivo-final.mp4
