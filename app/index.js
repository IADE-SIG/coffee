const express = require('express');
const {getLocalIpAddress} = require('./libs/utils');
const {create} = require('express-handlebars');
const path = require('path');

const port = 3000;
const app = express();

app.use(express.json());

// view template system
const hbs = create({
    helpers: {
        // usage: {{json context}}
        json: (context) => JSON.stringify(context),
        // usage: {{#section 'name'}} content {{/section}}
        section: function (name, options) {
            if (!this._sections) this._sections = {};
            this._sections[name] = options.fn(this);
            return null;
        }
    }
});
app.engine('handlebars', hbs.engine);
app.set('view engine', 'handlebars');
app.set("views", path.resolve(__dirname, "./views"));

// static files root
app.use(express.static(path.resolve(__dirname, "./public")));

// routers
const CoffeeShopRouter = require('./routes/coffee-shops.routes');
app.use('/coffee-shops:ext?', CoffeeShopRouter);

app.listen(port, () => {
    let ipAddress = getLocalIpAddress();
    console.log(`App listening at http://${ipAddress}:${port}`);
});