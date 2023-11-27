import React, {useState} from 'react';
import axios from 'axios';

export default () => {
    const [name,setname] = useState('');
    const [description,setdescription] = useState('');
    const [quantity,setquantity] = useState('');
    const onSubmit = async (event) => {
        event.preventDefault();
        await axios.post('/products',{
            name, description, quantity
        });
        setname('');
        setdescription('');
        setquantity('');
    };
    return <div>
        <form onSubmit = {onSubmit}>
            <div className = "form-group">
                <label>Name</label>
                <input 
                value = {name} onChange= {e=>setname(e.target.value)} 
                className="form-control"
                />
                <label>Description</label>
                <input 
                value = {description} onChange= {e=>setdescription(e.target.value)} 
                className="form-control"
                />
                <label>Quantity</label>
                <input 
                value = {quantity} onChange= {e=>setquantity(e.target.value)} 
                className="form-control"
                />
            </div>
            <button className = "btn btn-primary">Submit</button>
        </form>
    </div>
}