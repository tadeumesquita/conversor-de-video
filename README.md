# Conversor de Vídeo

### Script para converter videos no Linux
Para converter vídeos gravados através [Adobe Flash Media Live Encoder](https://www.baixaki.com.br/download/adobe-flash-media-encoder.htm) ou [OBS](https://obsproject.com/pt-br) em .f4v para .mp4 usando o [ffmpeg](https://ffmpeg.org/) eu executava o seguinte comando:

```bash
ffmpeg -i arquivo-original -vcodec copy -acodec copy -loglevel debug -report arquivo-final.mp4
```

Para não ter que ficar digitando toda hora criei um script simples que recebe o nome do arquivo como parâmetro e faz a conversão, basta apenas digitar o seguinte:

```bash
f4vtomp4 ~/Videos/MeuFilme.f4v
```

### Como rodar
```git
git clone git@github.com:tadeumesquita/conversor-de-video.git
```
Faça isso em seu diretório de scripts, no meu caso `~/Develop/scripts`

```bash
alias f4vtomp4="/home/tadeumesquita/Develop/scripts/conversor-de-video/f4vtomp4.sh $@"
```
Como uso o [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh), criei o alias no meu arquivo de configuração em ~/.zshrc
Repare que a chamada do alias está preparada para receber um parâmetro.

```bash
f4vtomp4 ~/Videos/MeuFilme.f4v
```


### Como foi feito
* Criei um arquivo de script f4vtomp4.sh dentro do meu diretório de scripts `~/Develop/scripts/conversor-de-video`
* Tornei o arquivo executável `chmod +x ~/Develop/scripts/conversor-de-video/f4vtomp4.sh`
* Como uso o [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh), criei um alias no meu arquivo de configuração em ~/.zshrc

```bash
alias f4vtomp4="/home/tadeumesquita/Develop/scripts/conversor-de-video/f4vtomp4.sh $@"
```

Repare que a chamada do alias está preparada para receber um parâmetro.

