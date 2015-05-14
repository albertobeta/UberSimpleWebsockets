use Net::WebSocket::Server;

#Config
my $port = 9000; #Websocket Port
my $timeInterval = 2; #Seconds

my $ws = Net::WebSocket::Server->new(
    listen => $port,
    tick_period => $timeInterval, #time between messages
    on_tick => sub {
		#Generates random values to send via websocket
		my $msg = rand(10).";".rand(10).";".rand(10).";".rand(10);
        my ($serv) = @_;
        $_->send_utf8($msg) for $serv->connections;
    },
)->start;

