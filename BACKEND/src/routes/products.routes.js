import {Router} from 'express'
import {createNewProducts, DeleteProductById, getProducById, getProducts, GetTotalProducts, UpdateProductById} from '../controllers/products.controller'
const router = Router()
router.get('/products', getProducts)
router.post('/products', createNewProducts) 
router.get('/products/count', GetTotalProducts) 
router.get('/products/:id', getProducById ) 
router.put('/products/:id', UpdateProductById ) 
router.delete('/products/:id', DeleteProductById ) 

export default router 