import express from 'express'
import config from './config'
import productsRoutes from './routes/products.routes'
const app =  express()

//setings
app.set('port',config.port)
//app.set('views',path.join(__dirname,'views'));
//app.set('view engine', 'ejs');
// midllewares 
app.use(express.json())
app.use(express.urlencoded({extended: false}));
app.use(productsRoutes)
export default app