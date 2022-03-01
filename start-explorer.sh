NETWORK="$1"
if [ -z "$NETWORK" ]; then
    NETWORK="testnet"
fi
HOST="explorer.bitriyal.net" PORT="4200" yarn build:"$NETWORK"
EXPLORER_HOST="explorer.bitriyal.net" EXPLORER_PORT="4200" pm2 start /home/bitriyal/core-explorer/express-server.js --name explorer
