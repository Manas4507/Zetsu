    //importing modules
    const { Socket } = require('dgram');
const express =require('express');
    const http =require('http'); //import http from 'http.dart;
    const  Mongoose  = require('mongoose');

    const app =express();
    const port =process.env.PORT ||3000;

    var server =http.createServer(app);

    var io=require('socket.io')(server);


    //middleware
    //CLIENT ->MIDDLEWARE -> SERVEER
    app.use(express.json);

   
    const DB ="mongodb+srv://test1:TjzK2n3iTP18rh5o@cluster0.46wemmq.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

     io.on("connection",(socket)=>{
        console.log("connected io")
    });
    
    Mongoose.connect(DB).then(()=>{
        console.log("connection successful")
    }).catch((e)=>{
        console.log(e)
    })



    server.listen(port,'0.0.0.0',()=>{
        console.log('Server started and running on port' + port)
    });

