# munin-contrib

A plugins package of [munin](http://munin-monitoring.org/).
The following implementations are available

- munin-smartalert: A smart alert script
- megaraid_cli: Monitor MegaRAID disk status through [MegaCLI](http://www.avagotech.com/cs/Satellite?pagename=AVG2/searchLayout&SearchKeyWord=megacli&searchType=DocumentFileExtension-zip&locale=avg_en&srchradio=null)
- nvidia_smi: Monitor NVIDIA Tesla M2090 GPU statistics via nvidia-smi command

## Install
Follow the commands below

```
$ git clone https://github.com/lambdalisue/munin-contrib
$ sudo cp -r munin-contrib /opt/munin-contrib
$ cd munin-contrib
$ sudo ./scripts/install_contrib.sh
```

## Usage

### munin-smartalert

*munin-smartalert* is an an alert script which check a last status and alert only when the last status has changed (or 24 hours has passed from the last notification).

The usage of the script is

```
/opt/munin-contrib/bin/munin-smartalert {slug} {status} {subject} {recipient}
```

And the example of the usage in `/etc/munin/munin.conf` is

```
contact.{name}.command /opt/munin-contrib/bin/munin-smartalert \
    ${var:group}.${var:host}.${var:graph_category}.${var:graph_title} \
    ${var:wfields}:${var:cfields}:${var:ufields} \
    Munin::${var:group}::${var:host}::${var:graph_title} \
    sample@example.com
```

### megaraid_cli

TODO

### nvidia_smi

TODO


## License
The MIT License (MIT)

Copyright (c) 2015 Alisue, hashnote.net

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
