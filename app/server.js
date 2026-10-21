const express = require('express');
const mysql = require('mysql2');
const app = express();
app.set('view engine', 'ejs');

const pool = mysql.createPool({
    host: 'mysql',
    user: 'root',
    password: 'root_password_123',
    database: 'portfolio',
    charset: 'utf8mb4'
});

app.get('/', (req, res) => {
    pool.query('SELECT * FROM profiles LIMIT 1', (err, results) => {
        if (err) return res.send("Lỗi kết nối DB");
        res.render('index', { profile: results[0] });
    });
});

app.listen(3000, () => console.log('App running on port 3000'));
