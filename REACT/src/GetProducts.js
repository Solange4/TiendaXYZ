import React, {useState, useEffect} from 'react';
import axios from 'axios';
export default () => {
    //empieza con {} porque es un objeto vacio
    const [posts,setPosts] = useState([]);
    const fetchPosts = async () =>
    {
        // muestra comentarios y post de queryservice
        const res = await axios.get('/products');
        
        setPosts(res.data);
    };
    useEffect(()=>{
        fetchPosts();
    },[]);
    // objetc.values devuelve un array con los valores pertenecientes a un objetos, lo usamos porque el id de cada post se va a necesitar
    // agregar y listar comentaarios 
    const renderedPosts = posts.map(post => {
        return (
        <div 
            className="card" 
            style = {{width: '30%', marginBottom: '20px'}}
            key={post.id}
        >
        <div className="card-body">
            <h3>{post.name}</h3>
            <h3>{post.description}</h3>
            <h3>{post.quantity}</h3>            
        </div>
        </div>);
    });

    return <div className="d-flex flex-row flex-wrap justify-content-between">
            {renderedPosts}
            </div>;
};