export const queries = {
    getAllProduct : 'SELECT * FROM Products',
    createNewProduct : 'insert into Products (name,description, quantity) VALUES (@name,@description,@quantity)',
    getProductById1 : 'Select * from Products where id = @id',
    DeletePRoduct : 'delete from [webstore].[dbo].[Products] where id = @id',
    getTotalProducts: 'Select count(*) from Products',
    UpdateProductById: 'UPDATE Products SET name = @name, description = @description, quantity = @quantity where id = @id'
}