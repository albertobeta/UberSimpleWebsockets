# Uber Simple Websockets
There are many examples of use of websockets out there, however most of them are cumbersome or too complex for newbies.

Here is an extremely simple example of websockets which consists of a server (implemented both in PERL
and Python, up to you the choice) that pushes a message (i.e. randomly generated values) to the client upon a fixed time interval.

Two clients are available in this example: 
- *client-JustLog.html* displays on screen the log with the messages received; 
- *client-Chart.html* shows a bar chart (based on [Google Charts](https://developers.google.com/chart/)) which updates in real time with the data received.


#Configuration
If you are running this code in a local host (i.e. your local machine) no configuration is needed.
Otherwise, you can change ports and host from the config sections in the code.


# Usage
1. **SERVER**: choose either *send.pl* (PERL) or *send.py* (Python) and run ONE of them from
the terminal: type either ``perl send.pl`` or ``python send.py``
2. **CLIENT**: Open one of the two clients (but they also work at the same time in two separate tabs) 
using a modern browser (e.g. tested and working with Chrome v.42+). Notice that the client must be opened after the server is
running (otherwise, you will have to push the "reconnect" button).
3. See the data pushed automatically from the server to the client via websockets :bowtie: (Optionally, you might want to use 
[Firebug](https://getfirebug.com/releases/lite/chrome/) with *client-Chart.html* to see the console logs)


# Requirements
- PERL or Python
- A modern browser that supports websockets (e.g. Chrome v.42+)

**Notice:**
the PERL implementation of the server requires [Net::WebSocket::Server](http://search.cpan.org/~topaz/Net-WebSocket-Server-0.001003/lib/Net/WebSocket/Server.pm).
On a Mac OS it can be installed using the command:
`sudo perl -MCPAN -e 'install Net::WebSocket::Server'`

The Python implementation of the server requires [Tornado](http://www.tornadoweb.org/en/stable/) that can be installed using pip
(`pip install tornado`) or manually:
```
tar xvzf tornado-4.1.tar.gz
cd tornado-4.1
python setup.py build
sudo python setup.py install
```
