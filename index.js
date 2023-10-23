express = require('express')// import"material.dart' matlab k iski headerfile 
//ha har kisi me use krni ha 
app= express() // object of express

app.get('/',(req,res)=>{
    // console.log(req);
    console.log(req);
    res.json({'hii':"okk kar"})
});

// listen funtion ko continuosly run krta rehtaha 
app.listen(3000,"0.0.0.0",()=>{
    console.log("CHAL GYA SERVER");
})

// middle where -> ye server k lihaz sy data ko chnage krta ha for example json ka data aya to wo isko apny server k according convert kry ga 
//Roots-> kiss root pr konsa kaam karta ha ....e.g /user ha to return user agar 
// sir keh rahy han k chatGPT karo