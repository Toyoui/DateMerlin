#!/bin/bash

> /opt/1panel/apps/openresty/openresty/www/sites/bitmap.date/index/merlin/merlinother.txt

cd /opt/1panel/apps/openresty/openresty/www/sites/bitmap.date/index/merlin/json

curl "https://www.okx.com/priapi/v1/wallet/web/coin/price?coinIds=1" -o btcprice.json
curl "https://www.okx.com/priapi/v1/wallet/web/coin/price?coinIds=3" -o ethprice.json
curl "https://www.okx.com/priapi/v1/nft/project/stats?urlName=bitmap" -o bitmapprice.json
curl "https://www.okx.com/priapi/v1/nft/project/stats?urlName=brc-420" -o blueboxprice.json
curl "https://www.okx.com/priapi/v1/nft/project/stats?urlName=mineral-5" -o mineralprice.json
curl "https://www.okx.com/priapi/v1/nft/project/stats?urlName=this-song-about-nfts-4" -o tsanprice.json

curl "https://bridge.merlinchain.io/api/v1/tvl" -o merlinoff.json

curl "https://api.etherscan.io/api?module=account&action=tokenbalance&contractaddress=0x7122985656e38BDC0302Db86685bb972b145bD3C&address=0x147A198d803D4a02b8bEc7CC78be1AbE0C3d93E5&tag=latest&apikey=N4SEC4IB4AQCDQI2EF2AARP4BJW4MCPA7A" | sed 's/}/}\n/g' >> /opt/1panel/apps/openresty/openresty/www/sites/bitmap.date/index/merlin/merlinother.txt
curl "https://api.etherscan.io/api?module=account&action=tokenbalance&contractaddress=0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48&address=0x8Bb6CaE3f1CADA07Dd14bA951e02886ea6bBA183&tag=latest&apikey=N4SEC4IB4AQCDQI2EF2AARP4BJW4MCPA7A" | sed 's/}/}\n/g' >> /opt/1panel/apps/openresty/openresty/www/sites/bitmap.date/index/merlin/merlinother.txt
curl "https://api.arbiscan.io/api?module=account&action=tokenbalance&contractaddress=0xaf88d065e77c8cC2239327C5EDb3A432268e5831&address=0x8bb6cae3f1cada07dd14ba951e02886ea6bba183&tag=latest&apikey=BFYU894GKXBZHEGPV73BF5VDQSJMYR75JV" | sed 's/}/}\n/g' >> /opt/1panel/apps/openresty/openresty/www/sites/bitmap.date/index/merlin/merlinother.txt
curl "https://api.arbiscan.io/api?module=account&action=tokenbalance&contractaddress=0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9&address=0x8bb6cae3f1cada07dd14ba951e02886ea6bba183&tag=latest&apikey=BFYU894GKXBZHEGPV73BF5VDQSJMYR75JV" | sed 's/}/}\n/g' >> /opt/1panel/apps/openresty/openresty/www/sites/bitmap.date/index/merlin/merlinother.txt
