const CoffeeShop = require('../models/cofee-shop.model');

module.exports = {
    findAll: async (req, res) => {
        const data = await CoffeeShop.findAll();
        const fileExtension = req.params.ext;
        const accept = req.get('Accept');
        if (accept === 'application/json') {
            res.json(data);
            return;
        }
        res.render('coffee-shops/index', {
            title: '', data: data
        });
    },
    find: async (req, res) => {
        const data = await CoffeeShop.find(req.params.id);
        const accept = req.get('Accept');
        if (accept === 'application/json') {
            res.json(data[0]);
            return;
        }
        res.render('coffee-shops/show', {
            title: '(#'+req.params.id+')',
            id: req.params.id,
            data: data[0]
        });
    },
    create: async (req, res) => {
        let formData = '';
        await req.on('data', (data) => {
            formData += data.toString();
        });
        let data = {};
        formData.split('&').forEach((pair) => {
            const [key, value] = pair.split('=');
            const sanitizedKey = key.replace(/\+/g, ' ');
            const sanitizedValue = value.replace(/\+/g, ' ');
            data[sanitizedKey] = sanitizedValue;
        });
        await CoffeeShop.create(data);
        res.redirect(303, '/coffee-shops');
    }
}