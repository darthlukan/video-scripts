# video-scripts

> Author: Brian Tomlinson <darthlukan@gmail.com>


## Description

> A collection of scripts that I use for performing video related tasks.


## Usage

* Screen capture ```screencap.sh```:


```
    $ ./screencap.sh $MONITOR $FILENAME
```


* Webm ```mkwebm.sh```:


```
    $ ./mkwebm.sh $INFILE $OUTFILE
```


* Gif ```mkgif.sh```:


```
    $ ./mkgif.sh $INFILE $OUTFILE
```


### Screencap Examples

> Center monitor in a tri-head setup, assumes 3 monitors at 1920x1080 for total of 5760x1080:


```
    $ ./screencap.sh 2 test
    >> $HOME/tmp/test.mkv
    # Captures 1920x1080 area starting from coords 1920x0
```


> Right (last) monitor in a tri-head setup, same assumptions as above:


```
    $ ./screencap.sh 3 test
    >> $HOME/tmp/test.mkv
    # Captures 1920x1080 area starting from coords 3840x0
```


### Webm example


```
    $ ./mkwebm.sh ~/tmp/test.mkv testwebm
    >> $HOME/tmp/testwebm.webm
    # Assumes a scale of 1080p
```


### Gif example


```
    $ ./mkgif.sh ~/tmp/test.mkv testgif
    >> $HOME/tmp/testgif.gif
    # Assumes you want 60FPS and don't care about size.
```


## License

> WTFPL, see LICENSE file.
