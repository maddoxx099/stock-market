let stockValues = [
  [
    [20,42],
    true,
    "ashaf",
    0,
  ],
  [
    [20,41],
    true,
    "jukusuke",
    0,
  ],
  [
    [20,32],
    true,
    "ryuuichi",
    0,
  ],
  [
    [20,32],
    true,
    "asuka",
    0,
  ],
  [
    [20,31],
    true,
    "noroi",
    0,
  ],
  [
    [20,30],
    true,
    "kenji",
    0,
  ],
  [
    [20,25],
    true,
    "asura",
    0,
  ],
  [
    [20,25],
    true,
    "tashiro",
    0,
  ],
  [
    [20,24],
    true,
    "tadashi",
    0,
  ],
  [
    [20,24],
    true,
    "seina",
    0,
  ],
  [
    [20,23],
    true,
    "kaze",
    0,
  ],
  [
    [20,23],
    true,
    "ishika",
    0,
  ],
  [
    [20,23],
    true,
    "akane",
    0,
  ],
  [
    [20,21],
    true,
    "sado",
    0,
  ],
  [
    [20,19],
    true,
    "alaric",
    0,
  ],
  [
    [20,18],
    true,
    "gorou",
    0,
  ],
  [
    [20,17],
    true,
    "kaiaku",
    0,
  ],
  [
    [20,15],
    true,
    "arata",
    0,
  ],
  [
    [20,14],
    true,
    "chiyomi",
    0,
  ],
  [
    [20,20],
    true,
    "kuba",
    0,
  ],
  [
    [20,20],
    true,
    "touka",
    0,
  ],
  [
    [20,20],
    true,
    "abo",
    0,
  ],
  [
    [20,20],
    true,
    "kazuya",
    0,
  ],
  [
    [20,21],
    true,
    "hanako",
    0,
  ],
  [
    [20,20],
    true,
    "higeki",
    0,
  ],
  [
    [20,20],
    true,
    "isamu",
    0,
  ],
  [
    [20,20],
    true,
    "enki",
    0,
  ],
  [
    [20,20],
    true,
    "yuu",
    0,
  ],
  [
    [20,20],
    true,
    "ue",
    0,
  ],
  [
    [20,20],
    true,
    "shiro",
    0,
  ],
  [
    [20,20],
    true,
    "shukei",
    0,
  ],
  [
    [20,20],
    true,
    "hokama",
    0,
  ],
  [
    [20,20],
    true,
    "wei",
    0,
  ]
];
//possibly add checkboxes for fraud and goat mode
/*let fraudNames = {"Gojo":"Go/Jo","Kashimo":"The Waffled One","Sukuna":"Fraudkuna","Yuta":"The Sneakiest","Maki":"Fem Toji","Yuji":"Punch and Kick Merchant","Higuruma":"Fodder 1","Kenjaku":"King of Recieving Backshots","Hakari":"Fodder 2","Nobara":"Haruta Victim","Megumi":"Potential Man","Uraume":"Glorified Freezer","Todo":"Useless CT Now"}
let goatNames = {"Gojo":"GOATjo","Kashimo":"KasHIMo","Sukuna":"GOATkuna","Yuta":"Wuta Oggoatsu","Maki":"HER","Yuji":"GOATji Himtadori","Higuruma":"HIMguruma","Kenjaku":"GOATjaku","Hakari":"HIMkari","Nobara":"HERbara","Megumi":"HIMgumi","Uraume":"HERaume","Todo":"GOATdo"}
function enableFraud(){
  console.log(document.querySelector('#fraudMode').checked)
}*/
let canvas = document.createElement("canvas");
canvas.width = 800;
const oneTick = canvas.width / 10;
canvas.height = 650;
let lastChapter;
let sellNum = 1;
let buyNum = 1;
canvas.id = "stockGraph";
const stockMax = 50;
let money = 1000;
let profit=0;
let totalstockvalue=1000;
let loggedIn = false;
document.getElementById("canvasBox").appendChild(canvas);
let context = canvas.getContext("2d");
if (window.innerWidth > 1650) {
  document
    .querySelector(".description-box-holder")
    .appendChild(document.getElementById("stockSidePanel"));
} else {
  document.body.appendChild(document.getElementById("stockSidePanel"));
}
window.onresize = () => {
  if (window.innerWidth > 1650) {
    document
      .querySelector(".description-box-holder")
      .appendChild(document.getElementById("stockSidePanel"));
  } else {
    document.body.appendChild(document.getElementById("stockSidePanel"));
  }
};

window.onload = async () => {
  for (const item of stockValues) {
    if (localStorage.getItem(`${item[2]}Visible`) != null) {
      item[1] = JSON.parse(localStorage.getItem(`${item[2]}Visible`));
    }
  }
  await getStockData(drawAll);
  //await drawAll();
  document.querySelector(
    ".buttonHolder"
  ).innerHTML = `<button class="leaderboard" onclick="location.href = '/leaderboard';" >Leaderboard</button>`;
  const date = new Date();
  if (
    !sessionStorage.username ||
    (sessionStorage &&
      (date.getTime() - Number(sessionStorage.startTime)) / (2 * 3600 * 1000) >
        1)
  ) {
    sessionStorage.clear();
    document.querySelector(
      ".buttonHolder"
    ).innerHTML += `<button class="login" onclick="location.href = '/login';" >log in/create account</button>`;
    setUpOtherTimes();
    setUpFirstTime();
  } else {
    await fetch("/get-user-data", {
      method: "get",
      headers: new Headers({
        "Content-Type": "application/json",
        authorization: `Bearer ${sessionStorage.getItem("token")}`,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        validateData(data);
      });
    document.querySelector(
      ".buttonHolder"
    ).innerHTML += `<button class="logout" onclick="sessionStorage.clear();
    location.reload();" >log out</button>`;
    loggedIn = true;
    setupFromServer();
  }
  updateStockDescriptions();
  updateMoney();
};
function setupFromServer() {
  money = Number(sessionStorage.money);
  profit = Number(sessionStorage.profit);
  for (let item of stockValues) {
    item[3] = Number(sessionStorage.getItem(item[2].toLowerCase()));
  }
  let profitDisplay = document.getElementById("profitDisplay");
  profitDisplay.innerHTML = `Profit:$${profit.toFixed(2)}`;
}

function toggleAll(num){
  let value;
  if(num ==0){
    value=false;
  }
  if(num ==1){
    value=true;
  }
  if(num<2){
    for(let item of stockValues){
      document.getElementById(`checkbox${item[2]}`).checked = value;
      item[1]=value;
      localStorage.setItem(`${item[2]}Visible`, value);
    }
  }
  if(num ==2){
    for(let item of stockValues){
      if(item[3]>0){
        document.getElementById(`checkbox${item[2]}`).checked = !item[1];
        item[1]=!item[1];
        localStorage.setItem(`${item[2]}Visible`, item[1]);
      }
    }
  }
  if(num ==3){
    for(let item of stockValues){
      if(item[3]<1){
        document.getElementById(`checkbox${item[2]}`).checked = !item[1];
        item[1]=!item[1];
        localStorage.setItem(`${item[2]}Visible`, item[1]);
      }
    }
  }
  context.clearRect(0, 0, canvas.width, canvas.height);
  drawGrid();
  prepareStockImages();
  drawStocks();
}
function drawGrid() {
  context.beginPath();
  context.strokeStyle = "black";
  context.lineWidth = 0.5;
  for (let i = 0; i < canvas.width + 1; i += oneTick) {
    context.moveTo(i, 0);
    context.lineTo(i, canvas.height);
    context.stroke();
  }
  for (let i = 0; i < canvas.height + 1; i += canvas.height / 10) {
    context.moveTo(0, i);
    context.lineTo(canvas.width, i);
    context.stroke();
  }
}
function drawAll() {
  stockValues.sort(function (a, b) {
    return b[0][b[0].length - 1] - a[0][a[0].length - 1];
  });
  drawGrid();
  drawStocks();
  prepareStockImages();
  drawStockPanel();
  drawStockSidePanel();
}
async function getStockData(callback) {
  await fetch("/stock-values")
    .then((res) => res.json())
    .then((values) => {
      for (let item of stockValues) {
        item[0] = values.map((obj) => Number(obj[item[2].toLowerCase()]));
        item[0] = item[0].reverse();
      }
      lastChapter = Number(values[0].lastchapter) -4;
    });
  callback();
}
function setUpFirstTime() {
  if (decodeURIComponent(document.cookie) == "" || getCookie("Money")==null|| getCookie("Money")=="") {
    setCookie("Money", money);
    setCookie("Profit", profit);
    setCookie("totalstockvalue", totalstockvalue);
    const date = new Date();
    setCookie("LastDate", date.getTime());
    for (let item of stockValues) {
      setCookie(item[2], 0);
    }
  }
}
function setUpOtherTimes() {
  if (decodeURIComponent(document.cookie) != ""&& getCookie("Money")!=null&& getCookie("Money")!="") {
    const date = new Date();
    money = Number(getCookie("Money"));
    totalstockvalue = money;
    for(let item of stockValues){
      item[3] = getCookie(item[2]);
      totalstockvalue +=item[3]*item[0][stockValues[0][0].length - 1];
    }
    if(getCookie("Profit")=='null'||getCookie("Profit")==''){
      setCookie("totalstockvalue", totalstockvalue);
      profit=0;
    }
    else{
      profit = Number(getCookie("Profit"))+totalstockvalue-Number(getCookie("totalstockvalue"));
    }
    timeSinceLastCookie =
      (date.getTime() - getCookie("LastDate")) / (24 * 3600 * 1000);
    money += 100 * Math.floor(timeSinceLastCookie);
    totalstockvalue += 100 * Math.floor(timeSinceLastCookie);
    timeSinceLastCookie -= Math.floor(timeSinceLastCookie);
    setCookie(
      "LastDate",
      date.getTime() - 24 * 3600 * 1000 * timeSinceLastCookie
    );
    setCookie("Money", money);
    setCookie("totalstockvalue",totalstockvalue);
    setCookie("Profit",profit);
    let profitDisplay = document.getElementById("profitDisplay");
    profitDisplay.innerHTML = `Profit:$${profit.toFixed(2)}`;
  }
}
function drawStockSidePanel() {
  let cashDisplay = document.createElement("h1");
  cashDisplay.setAttribute("id", "cashDisplay");
  document.getElementById("stockSidePanelMoney").appendChild(cashDisplay);
  cashDisplay.innerHTML = `Bank:$${money.toFixed(2)}`;
  let profitDisplay = document.createElement("h1");
  profitDisplay.setAttribute("id", "profitDisplay");
  document.getElementById("stockSidePanelMoney").appendChild(profitDisplay);
  profitDisplay.innerHTML = `Profit:$${0}`;
}
function changeSellNum(num) {
  sellNum = num;
  if (sellNum < 1000) {
    document.getElementById(
      "sidePanelSellButtonLabel"
    ).textContent = `Currently selling stocks ${sellNum} at a time`;
  } else {
    document.getElementById(
      "sidePanelSellButtonLabel"
    ).textContent = `Currently selling all stocks owned`;
  }
}
function changeBuyNum(num) {
  buyNum = num;
  if (buyNum < 1000) {
    document.getElementById(
      "sidePanelBuyButtonLabel"
    ).textContent = `Currently buying stocks ${buyNum} at a time`;
  } else {
    document.getElementById(
      "sidePanelBuyButtonLabel"
    ).textContent = `Currently buying all stocks possible`;
  }
}
function updateMoney() {
  let cashDisplay = document.getElementById("cashDisplay");
  cashDisplay.innerHTML = `Bank:$${money.toFixed(2)}`;
}
function drawStockPanel() {
  for (const [index, item] of stockValues.entries()) {
    let stockDiv = document.createElement("div");
    stockDiv.id = `stockDiv ${item[2]}`;
    stockDiv.setAttribute("class", "stockDiv");
    let descriptionBox = document.createElement("div");
    let descriptionTitle = document.createElement("h4");
    descriptionTitle.setAttribute("class", "stockDescriptionTitle");
    descriptionBox.appendChild(descriptionTitle);
    let checkbox = document.createElement("label");
    checkbox.setAttribute("class", "switch");
    if (!item[1]) {
      checkbox.innerHTML = `<input type="checkbox"  id="checkbox${item[2]}">
        <span class="slider round"></span>`;
    } 
    else if(item[1]) {
      checkbox.innerHTML = `<input type="checkbox"  id="checkbox${item[2]}" checked>
        <span class="slider round"></span>`;
    }
    checkbox.addEventListener("change", () => {
      item[1] = !item[1];
      context.clearRect(0, 0, canvas.width, canvas.height);
      drawGrid();
      prepareStockImages();
      drawStocks();
      localStorage.setItem(`${item[2]}Visible`, item[1]);
    });
    descriptionBox.appendChild(checkbox);
    descriptionTitle.textContent = `${item[2]}`;
    stockDiv.appendChild(descriptionBox);
    let description = document.createElement("p");
    stockDiv.appendChild(description);
    description.innerHTML = ` Stock:${item[3]} <br/> Value:$${
      item[0][item[0].length - 1]
    }`;
    description.setAttribute("id", `${item[2]}Description`);
    description.setAttribute("class", "stockDescription");
    document.getElementById("stockPanel").appendChild(stockDiv);
    let button = document.createElement("button");
    button.id = item[2];
    button.setAttribute("class", "stockPanelButtonBuy");
    button.textContent = "BUY";
    stockDiv.appendChild(button);
    button.setAttribute("onclick", `buyStock(${index})`);
    let button2 = document.createElement("button");
    button2.setAttribute("class", "stockPanelButtonSell");
    stockDiv.appendChild(button2);
    button2.textContent = "SELL";
    button2.setAttribute("onclick", `sellStock(${index})`);
  }
}
function updateStockDescription(index) {
  description = document.getElementById(`${stockValues[index][2]}Description`);
  description.innerHTML = `Stock:${stockValues[index][3]} <br/> Value:$${
    stockValues[index][0][stockValues[index][0].length - 1]
  }`;
}
function updateStockDescriptions() {
  for (const [index, item] of stockValues.entries()) {
    description = document.getElementById(
      `${stockValues[index][2]}Description`
    );
    description.innerHTML = `Stock:${stockValues[index][3]} <br/> Value:$${
      stockValues[index][0][stockValues[index][0].length - 1]
    }`;
  }
}
async function buyStock(index) {
  let ogmoney = money;
  let ogamount = stockValues[index][3];
  canBuy = Math.floor(
    money / Number(stockValues[index][0][stockValues[index][0].length - 1])
  );
  if (!canBuy >= 1) {
    return;
  }
  if (canBuy >= buyNum) {
    money -=
      buyNum * Number(stockValues[index][0][stockValues[index][0].length - 1]);
    stockValues[index][3] = Number(stockValues[index][3]);
    stockValues[index][3] += buyNum;
  }
  if (canBuy < buyNum) {
    money -=
      canBuy * Number(stockValues[index][0][stockValues[index][0].length - 1]);
    stockValues[index][3] = Number(stockValues[index][3]);
    stockValues[index][3] += canBuy;
  }
  const date = new Date();
  if (
    sessionStorage &&
    (date.getTime() - Number(sessionStorage.startTime)) / (2 * 3600 * 1000) > 1
  ) {
    location.reload();
  }
  if (loggedIn) {
    await fetch("/buy-stock", {
      method: "post",
      headers: new Headers({
        "Content-Type": "application/json",
        authorization: `Bearer ${sessionStorage.getItem("token")}`,
      }),
      body: JSON.stringify({
        name: stockValues[index][2].toLowerCase(),
        amount: buyNum,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        if (!data.money) {
          alertBox(data);
          money = ogmoney;
          stockValues[index][3] = ogamount;
        } else {
          money = Number(data.money);
        }
      });
  } else {
    setCookie("Money", money);
    setCookie(stockValues[index][2], stockValues[index][3]);
  }
  updateStockDescription(index);
  updateMoney();
}
async function sellStock(index) {
  let ogmoney = money;
  let ogamount = stockValues[index][3];
  canSell = stockValues[index][3];
  if (!canSell >= 1) {
    return;
  }
  if (canSell >= sellNum) {
    money +=
      sellNum * Number(stockValues[index][0][stockValues[index][0].length - 1]);
    stockValues[index][3] = Number(stockValues[index][3]);
    stockValues[index][3] -= sellNum;
  }
  if (canSell < sellNum) {
    money +=
      canSell * Number(stockValues[index][0][stockValues[index][0].length - 1]);
    stockValues[index][3] = Number(stockValues[index][3]);
    stockValues[index][3] -= canSell;
  }
  const date = new Date();
  if (
    sessionStorage &&
    (date.getTime() - Number(sessionStorage.startTime)) / (2 * 3600 * 1000) > 1
  ) {
    location.reload();
  }
  if (loggedIn) {
    await fetch("/sell-stock", {
      method: "post",
      headers: new Headers({
        "Content-Type": "application/json",
        authorization: `Bearer ${sessionStorage.getItem("token")}`,
      }),
      body: JSON.stringify({
        username: sessionStorage.username,
        name: stockValues[index][2].toLowerCase(),
        amount: sellNum,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        if (!data.money) {
          alertBox(data);
          money = ogmoney;
          stockValues[index][3] = ogamount;
        } else {
          money = Number(data.money);
        }
      });
  } else {
    setCookie("Money", money);
    setCookie(stockValues[index][2], stockValues[index][3]);
  }
  updateStockDescription(index);
  updateMoney();
}
function setCookie(name, value) {
  document.cookie = `${name}=${value}; expires=Sun,1 January 2040 12:00:00 UTC;`;
}
function deleteCookie(name) {
  setCookie(name, null, null);
}
function getCookie(name) {
  const cDecoded = decodeURIComponent(document.cookie);
  const cArray = cDecoded.split("; ");
  let result = 0;
  cArray.forEach((element) => {
    if (element.indexOf(name) == 0) {
      result = element.substring(name.length + 1);
    }
  });
  return result;
}
async function prepareStockImages() {
  for (item of [...stockValues].reverse()) {
    if (item[1] == true) {
      price = 0;
      imageName = "images/" + item[2] + ".png";
      if (item[0][item[0].length - 1] != undefined) {
        price = item[0][item[0].length - 1];
      }
      if (price === 0) {
        continue;
      }
      drawStockImage(item[2], imageName, price);
      await sleep(10);
    }
  }
}
async function drawStockImage(name, imageName, price) {
  return new Promise((resolve) => {
    const img = new Image();
    img.id = name;
    img.src = imageName;
    img.onload = function () {
      context.drawImage(
        img,
        canvas.width - oneTick - 20,
        canvas.height - (price * (canvas.height / stockMax) + 20)
      );
      resolve("resolved");
    };
  });
}
function sleep(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}
const alertBox = (data) => {
  const alertContainer = document.querySelector(".alert-box");
  const alertMsg = document.querySelector(".alert");
  alertMsg.innerHTML = data;

  alertContainer.style.top = `50%`;
  setTimeout(() => {
    alertContainer.style.top = null;
  }, 5000);
};
function drawStocks() {
  document
    .querySelectorAll(".chapterNums")
    .forEach((element, i) => (element.textContent = lastChapter + i));
  for (let item of stockValues) {
    if (item[1] == true) {
      for (let index = 0; index < item[0].length; index++) {
        context.beginPath();
        context.lineWidth = 5;
        value = item[0][index];
        if (item[0][index + 1] < value) {
          context.strokeStyle = "red";
        }
        if (item[0][index + 1] > value) {
          context.strokeStyle = "green";
        }
        //Maybe change in future
        if (item[0][index + 1] == value) {
          context.strokeStyle = "black";
        }
        context.moveTo(
          index * oneTick,
          canvas.height - (canvas.height / stockMax) * value
        );
        context.lineTo(
          (index + 1) * oneTick,
          canvas.height - (canvas.height / stockMax) * item[0][index + 1]
        );
        context.stroke();
      }
    }
  }
}
const validateData = (data) => {
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
};
