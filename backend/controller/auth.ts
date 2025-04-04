import prisma from '../prisma'
import {Request, Response} from 'express';
const CreateUser=async (req:Request,res:Response)=>{
    const {email,password}=req.body
    try{
    const user=await prisma.user_create.create({
        data:{
            email,
            password
        }
    })
    res.status(200).json({message:"User Created",user})
    }
    catch(err){
      res.status(500).json({message:"Error creating user",error:err})
    }
}
const GetUser=async (req:Request,res:Response)=>{
    const {email}=req.body
    try{
    const user=await prisma.user_create.findFirst({
        where:{
            email
        }
    })
    if(user){
        res.status(200).json({message:"User Found",user})
    }
    else{
        res.status(404).json({message:"User Not Found"})
    }
}
catch(err){
  res.status(500).json({message:"Error finding user",error:err})
}
}
const GetAllUser=async (req:Request,res:Response)=>{
    try{
     const user=await prisma.user_create.findMany()
     if(user.length==0){
        res.status(404).json({message:"Users Not Found"})
     }
     res.status(200).json({message:"Users Found",user})
    }
    catch(err){
        res.status(500).json({message:"Error finding user",error:err})
    }
}
export {CreateUser,GetUser,GetAllUser}