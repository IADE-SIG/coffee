const {networkInterfaces} = require('os');

function getLocalIpAddress(interfaceName = "en0") {
    const nets = networkInterfaces();
    const results = Object.create(null);
    try {

        for (const name of Object.keys(nets)) {
            for (const net of nets[name]) {
                if (net.family === 'IPv4' && !net.internal) {
                    if (!results[name]) {
                        results[name] = [];
                    }
                    results[name].push(net.address);
                }
            }
        }
        return results[interfaceName][0];
    } catch (e) {
        return 'localhost';
    }
}

module.exports = {
    getLocalIpAddress
}