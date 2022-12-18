const express = require('express');
const app = express();

const port = 80;

app.listen(port, '0.0.0.0', ()=> {
    console.log(`App listening at port: ${port}`)
} );

app.get('/', function(req, res) {
    res.send('<h1>It works!</h1>')
})