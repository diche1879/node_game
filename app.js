//cargar el modulo de express
const express = require('express');

//Cragar morgan
const morgan = require('morgan');

//inicializar la app con express
const app = express();

//puerto
const PORT = 3000;

//usar morgan en modo developer
app.use(morgan('dev'));

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/index.html');
});

app.listen(PORT, () => {
    console.log(`Servidor en: http://localhost:${PORT}`);
});