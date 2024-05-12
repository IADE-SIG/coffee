require('dotenv').config();
const pg = require("pg");

const hostname = process.env.DB_HOST || 'localhost';
const database = process.env.DB_DATABASE || 'mydb';
const username = process.env.DB_USER || 'postgres';
const password = process.env.DB_PASSWORD || 'foobar';
const port = process.env.DB_PORT || 5432;

const client = new pg.Client({
    host: hostname,
    database: database,
    port: port,
    user: username,
    password: password,
});

module.exports = {
    findAll: async () => {
        if (!client._connected) {
            await client.connect();
        }
        const result = await client.query(`SELECT id,
                                                  name,
                                                  category,
                                                  rating,
                                                  num_reviews,
                                                  st_asgeojson(location) as location,
                                                  address
                                           FROM businesses;`);
        let data = result.rows;
        for (let i = 0; i < data.length; i++) {
            data[i].location = JSON.parse(data[i].location);
        }
        return data;
    },
    find: async (id) => {
        if (!client._connected) {
            await client.connect();
        }
        const result = await client.query(`SELECT id,
                                                  name,
                                                  category,
                                                  rating,
                                                  num_reviews,
                                                  st_asgeojson(location) as location,
                                                  address
                                           FROM businesses
                                           WHERE id = $1;`, [id]);
        let data = result.rows;
        for (let i = 0; i < data.length; i++) {
            data[i].location = JSON.parse(data[i].location);
        }
        return data;
    },
    create: async (data) => {
        if (!client._connected) {
            await client.connect();
        }
        const result = await client.query(`INSERT INTO businesses (name, category, rating, num_reviews, location, address)
                                           VALUES ($1, $2, $3, $4, st_geomfromgeojson($5), $6)
                                           RETURNING id;`,
            [
                data.name,
                data.category,
                data.rating,
                data.num_reviews,
                JSON.stringify({
                    type: "Point",
                    properties: {},
                    coordinates: [data.lat, data.lon]
                }),
                data.address
            ]
        );
        return result.rows[0].id;
    }
}