addEventListener("DOMContentLoaded", ()=>{
    let myfor = document.querySelector("#MyForm");

    myfor.addEventListener("submit", async(e)=>{
        e.preventDefault();
        let opc = e.submitter.dataset.accion;
        if(opc=="guardar"){
            let config = {
                method:"POST",
                headers:{"Content-Type": "Application/json"},
                body:JSON.stringify(
                    {
                        idCamper: 5,
                        nom: "Carlos",
                        ape: 21,
                        fecha: "2023-06-24",
                        idReg: 1
                    }
                )
            };
            let data = await (await fetch("localhost/ApolT01-022/PruebaCampus/uploads/camper", config)).text();
            console.log(data);
        }else if(opc=="listar"){
            let config = {
                method:"GET",
                headers:{"Content-Type": "Application/json"},
            };
            let data = await (await fetch("localhost/ApolT01-022/PruebaCampus/uploads/camper", config)).json();
            console.log(data);
        }
    })
})