# ylc

(Y)ouTube via V(LC)

## Usage

Pretty simple, really:

1.	Feed it a YouTube URL.

2.	Have that URL open in [VLC](http://www.videolan.org/vlc/index.html).

3. 	Feed it multiple URLs if you want, a new VLC instance will open for each one.

## Why?

* I can set VLC to “Float on Top” if I want:

![](https://github.com/tjluoma/ylc/raw/master/img/vlc-float-on-top.png)


* I can easily control its position relative other windows (especially browser windows).

* Easy to pause/quit/rewind/etc.

* Because I wanted to.

## How does this work?

All of the hard work is done by [youtube-dl](https://rg3.github.io/youtube-dl/).

I just wrapped a little script around it.

## Installation

In Terminal.app:

1. `cd` to somewhere in your `$PATH` such as `/usr/local/bin/`

		cd /usr/local/bin/

2.	Download the script

		curl -fL --remote-name https://raw.githubusercontent.com/tjluoma/ylc/master/ylc.sh

3.	Make it executable

		chmod 755 ylc.sh

4.	Make sure that you have `youtube-dl` installed somewhere in your `$PATH`

		which youtube-dl

5. If `youtube-dl` is not installed, install it with `brew install youtube-dl` or from [its web page](https://rg3.github.io/youtube-dl/).


