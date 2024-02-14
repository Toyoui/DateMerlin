const crypto = require('crypto');
const axios = require('axios');
const fs = require('fs');

const geniidata_md5 = async (url) => {
    try {
        const parsedUrl = new URL(url);
        const timestamp = Math.floor(Date.now() / 1000).toString();
        let data = `path=${parsedUrl.pathname}&x-timestamp=${timestamp}Geniidata`;
        const hash = crypto.createHash('md5').update(data).digest('hex').toUpperCase();
        return { timestamp, hash };
    } catch (error) {
        console.error('报错', error.message);
    }
}

(async () => {
    const url = 'https://www.geniidata.com/api/btc/address/v2/info?address=bc1qm64dsdz853ntzwleqsrdt5p53w75zfrtnmyzcx';
    const { timestamp, hash } = await geniidata_md5(url);
    const response = await axios.get(url, {
        headers: {
            'x-sign-token': hash,
            'x-timestamp': timestamp,
        },
    });
    const filePath = '/opt/1panel/apps/openresty/openresty/www/sites/bitmap.date/index/merlin/json/merlinbrc.json';
    fs.writeFileSync(filePath, JSON.stringify(response.data));
    console.log('Data written to file:', filePath);
})();
