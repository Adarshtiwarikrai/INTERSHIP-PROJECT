import express from 'express'
import cors from 'cors'
import {CreateUser,GetUser,GetAllUser} from '../controller/auth'
const approuter = express()
approuter.post('/CreateUser',CreateUser)
approuter.get('/GetUser',GetUser)
approuter.get('/GetAllUser',GetAllUser)
export default approuter