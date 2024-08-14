const username = document.querySelector('.username');
const password = document.querySelector('.password');
const submitBtn = document.querySelector('.submit-btn');

window.onload = () =>{
    if(sessionStorage.username){
      location.href = '/';
    }
  }

if(document.querySelector('.heading').textContent==="login"){
    submitBtn.addEventListener('click',()=>{
        fetch('/login-user', {
            method:'post',
            headers: new Headers({'Content-Type': 'application/json'}),
            body: JSON.stringify({
                username: username.value,
                password:password.value
            })
        })
        .then(res=>res.json())
        .then(data => {
            validateData(data);
        })
    })
} else{
    submitBtn.addEventListener('click',()=>{
        if(password.value.length<8){
            alertBox("password too short")
        }
        else{
            fetch('/register-user', {
                method:'post',
                headers: new Headers({'Content-Type': 'application/json'}),
                body: JSON.stringify({
                    username: username.value,
                    password:password.value
                })
            })
            .then(res=>res.json())
            .then(data => {
                if(data.username){
                    location.href = '/login'
                } else{
                    alertBox(data);
                }
            })
        }
    })
}

const validateData = (data)=>{
    sessionStorage.setItem("token",data[1].accessToken);
    if(typeof data==='object'){
        data=data[0];
    }
    if(!data.username){
        alertBox(data);
    } else{
        const date = new Date();
        sessionStorage.startTime = date.getTime();
        sessionStorage.username = data.username;
        sessionStorage.money = Number(data.money);
        sessionStorage.profit = Number(data.profit);
        sessionStorage.ashaf = data.ashaf;
        sessionStorage.jukusuke = data.jukusuke;
        sessionStorage.ryuuichi = data.ryuuichi;
        sessionStorage.asuka = data.asuka;
        sessionStorage.noroi = data.noroi;
        sessionStorage.kenji = data.kenji;
        sessionStorage.asura = data.asura;
        sessionStorage.tashiro = data.tashiro;
        sessionStorage.tadashi = data.tadashi;
        sessionStorage.seina = data.seina;
        sessionStorage.kaze = data.kaze;
        sessionStorage.ishika = data.ishika;
        sessionStorage.akane = data.akane;
        sessionStorage.sado = data.sado;
        sessionStorage.alaric = data.alaric;
        sessionStorage.gorou = data.gorou;
        sessionStorage.kaiaku = data.kaiaku;
        sessionStorage.arata = data.arata;
        sessionStorage.chiyomi = data.chiyomi;
        sessionStorage.kuba = data.kuba;
        sessionStorage.touka = data.touka;
        sessionStorage.abo = data.abo;
        sessionStorage.kazuya = data.kazuya;
        sessionStorage.hanako = data.hanako;
        sessionStorage.higeki = data.higeki;
        sessionStorage.isamu = data.isamu;
        sessionStorage.enki = data.enki;  
        sessionStorage.yuu = data.yuu;
        sessionStorage.ue = data.ue;
        sessionStorage.shiro = data.shiro;
        sessionStorage.shukei = data.shukei;
        sessionStorage.hokama = data.hokama;
        sessionStorage.wei = data.wei;
        //sessionStorage = JSON.parse(data)
        location.href = '/';
    }
}

const alertBox = (data) =>{
    const alertContainer = document.querySelector('.alert-box');
    const alertMsg = document.querySelector('.alert')
    alertMsg.innerHTML = data;

    alertContainer.style.top = `5%`;
    setTimeout(() =>{
        alertContainer.style.top = null;
    },5000)
}