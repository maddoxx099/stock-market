array = [["ashaf", "jukusuke" ,"ryuuichi","asuka","noroi" ,"kenji" ,"asura" ,"tashiro" ,"tadashi","seina" ,"kaze","ishika" ,"akane","sado" ,"alaric" , "gorou","kaiaku",  "arata","chiyomi","kuba","touka","abo", "kazuya","hanako","higeki","isamu","enki","yuu","ue","shiro","shukei","hokama","wei","sanagi","meatloaf","amelie","shihai","yasu","hirioki","renzo","kota","itachi","hikari","sora","kairijo","aki","toru","aoyama","dai","ikiryo","shyythiel","ain","doctor","torako","eiko","hokori_gojo","shion","kizu","darius","yoshinori","ghose","kaien","suzuki"],
         [39 , 46.03 , 37.63 , 34.61 , 31.62 , 33.7,27.25,27.29,24, 29.26,23.69,23.22,24.15,25.4,19.57,18.54,21.37,16.1,14.7,21.6,23.81,20,24.2,21,21.2,20.6,17.64,21.41,20,21.63,20,22.2,20,20,2,20,10,20,20.6,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,]]
output = ""
for i,value in enumerate(array[0]):
    output+= str(value)+"*"+ str(array[1][i])+"+"
output += "money"
print("UPDATE users set tempProfit=totalstockvalue;\nUPDATE users set totalstockvalue="+output+";\nUPDATE users set tempProfit=totalstockvalue-tempProfit;\nUPDATE users set profit=profit+tempProfit;")