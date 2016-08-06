#!/bin/sh
echo "Building data for exploit"
echo "./build.sh http://$HENKAKU_HOST:$HENKAKU_STAGE2_PORT/ http://$HENKAKU_HOST:$HENKAKU_PKG_PORT/pkg"
./build.sh http://$HENKAKU_HOST:$HENKAKU_STAGE2_PORT/ http://$HENKAKU_HOST:$HENKAKU_PKG_PORT/pkg

echo "Running webserver"
echo "Now open http://$HENKAKU_HOST:$HENKAKU_PKG_PORT/exploit.html on your PS Vita :>"
cd /app/host
python -m http.server $HENKAKU_PKG_PORT & 
go run stage2.go -payload stage2.bin -port $HENKAKU_STAGE2_PORT
