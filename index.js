const bot = require('https://github.com/STAR-KING0/Queen_Alya/index.js');
const { VERSION } = require('https://github.com/STAR-KING0/Queen_Alya/config.js');

const start = async () => {
    Debug.info(`Asta ${VERSION}`);
    try {
        await bot.init();
        bot.logger.info('ꜱᴛᴀʀᴛɪɴɢ ᴀᴘᴘ');
        await bot.DATABASE.sync();
        await bot.connect();
    } catch (error) {
        Debug.error(error);
        start();
    }
};
start();

//ASTA
