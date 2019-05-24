# Conversor de Vídeo

### Script para converter videos no Linux
Para converter vídeos gravados através [Adobe Flash Media Live Encoder](https://www.baixaki.com.br/download/adobe-flash-media-encoder.htm) ou [OBS](https://obsproject.com/pt-br) em .f4v para .mp4 usando o [ffmpeg](https://ffmpeg.org/) eu executava o seguinte comando:

```bash
ffmpeg -i arquivo-original -vcodec copy -acodec copy -loglevel debug -report arquivo-final.mp4
```

Para não ter que ficar digitando toda hora criei um script simples que recebe o nome do arquivo como parâmetro e faz a conversão no mesmo diretório do arquivo original, basta apenas digitar o seguinte:

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


### Referências
* [Executar um script bash](https://www.vivaolinux.com.br/topico/Duvidas-em-Geral/Executar-arquivo-sh-1)
* [Manipular Strings no bash](https://www.vivaolinux.com.br/dica/Manipulacao-de-strings-no-bash)
* [Trabalhando com variáveis no bash](https://www.devmedia.com.br/introducao-ao-shell-script-no-linux/25778)
* [Parâmetros no alias](https://jcjesus.wordpress.com/2015/12/30/criando-alias-com-parametros-no-linux/)
* [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
