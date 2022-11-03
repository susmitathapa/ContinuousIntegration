const data = require("./data.json")
console.log(data);
function readFile(data){
    if(data.id!=1){
        throw new Error("id not found")
    }else{
        console.log("id found");
    }
}
readFile(data);