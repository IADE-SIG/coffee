const express = require('express');
const router = express.Router();
const path = require('path');

const CoffeeShopController = require("../controllers/coffee-shops.conroller");

// GET /coffee-shops
// GET /coffee-shops.json
router.get('', CoffeeShopController.findAll);

router.get('/:id', CoffeeShopController.find);

// POST /coffee-shops -d -d 'name=Bar+IADE&rating=5&num_reviews=1&lon=38.70737564461885&lat=-9.152443432254032' localhost:3000/coffee-shops
router.post('', CoffeeShopController.create);

module.exports = router;