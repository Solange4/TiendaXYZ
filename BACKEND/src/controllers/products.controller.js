import {getConnection, sql, queries} from '../database'

export const getProducts = async (req,res)=> {
    try {
        const pool = await getConnection();
        const result = await pool.request().query(queries.getAllProduct);
        console.log(result);
        res.json(result.recordset);
        //res.render('index',{title:'PRimera pagina'});
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
};
export const createNewProducts = async (req,res) => {
    const {name, description} = req.body;
    let {quantity} = req.body;
    
    if (name == null || description == null){
        return res.status(400).json({msg: 'Bad request. Please fill all fields'})
    }
    if (quantity == null) quantity = 0;
    try {
        const pool = await getConnection();
        await pool.request()
            .input("name",sql.VarChar,name)
            .input("description",sql.Text,description)
            .input("quantity",sql.Int,quantity)
            .query(queries.createNewProduct);

        res.json({name,description,quantity})
    } catch (error) {
        res.status(500)
        res.send(error.message);
    }
    
};
export const getProducById = async (req,res) => {
    const {id} = req.params;
    const pool = await getConnection();
    const result =  await pool
        .request()
        .input('id',id)
        .query(queries.getProductById1)
    console.log(result);
    res.send(result.recordset[0]);
};

export const DeleteProductById = async (req,res) => {
    const {id} = req.params;
    const pool = await getConnection();
    const result =  await pool
        .request()
        .input('id',id)
        .query(queries.DeletePRoduct)
    console.log(result);
    res.sendStatus(204);
};

export const GetTotalProducts = async (req,res) => {
    const pool = await getConnection();
    const result = await pool
    .request()
    .query(queries.getTotalProducts);
    console.log(result);
    res.json(result.recordset[0]['']);
};

export const UpdateProductById = async (req,res) => {

    const {name, description,quantity} = req.body;
    const {id } = req.params;
    if (name == null || description == null , quantity == null){
        return res.status(400).json({msg: 'Bad request. Please fill all fields'})
    }
    const pool = await getConnection();
    await pool.request()
    .input('name', sql.VarChar,name)
    .input('description',sql.Text,description)
    .input('quantity',sql.Int, quantity)
    .input('id',sql.Int, id)
    .query(queries.UpdateProductById)
    res.json({name,description,quantity})
}