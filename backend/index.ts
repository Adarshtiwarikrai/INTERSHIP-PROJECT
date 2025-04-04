import express from 'express';
import cors from 'cors';
import approuter from './router/route'
const app=express();
app.use(cors());
app.use(express.json());
app.listen(3000,()=>{
    console.log("server is running on port 3000");
})
app.get('/',(req,res)=>{
    console.log("Hello World")
    res.send("Hello World")
})
app.use('/',approuter)