array = [["ashaf", "jukusuke" ,"ryuuichi","asuka","noroi" ,"kenji" ,"asura" ,"tashiro" ,"tadashi","seina" ,"kaze","ishika" ,"akane","sado" ,"alaric" , "gorou","kaiaku",  "arata","chiyomi","kuba","touka","abo", "kazuya","hanako","higeki","isamu","enki","yuu","ue","shiro","shukei","hokama","wei","sanagi","meatloaf","amelie","shihai","yasu","hirioki","renzo","kota","itachi","hikari","sora","kairijo","aki","toru","aoyama","dai","ikiryo","shyythiel","ain","doctor","torako","eiko","hokori_gojo","shion","kizu","darius","yoshinori","ghose","kaien","suzuki"],
         [28 , 50 , 43 , 39 , 31.62 , 33.7, 27.25, 27.29, 24, 31, 26, 27, 28, 21, 19.57, 20, 25, 21, 17, 24, 24.5, 1, 24.2, 23.1, 21.2, 22.5, 17.64, 21.41, 20, 20.4, 19, 25.1, 20, 20, 1, 21, 1, 20, 20.6, 22.1, 24.3, 18.6, 20, 20, 20, 22.3, 23.4, 20, 20, 20, 20, 22.6, 20, 17.8, 21.1, 21.4, 22.3, 20, 22.7, 20, 20, 20, 21.8]]
output = ""
for i,value in enumerate(array[0]):
    output+= str(value)+"*"+ str(array[1][i])+"+"
output += "money"
print("UPDATE users set tempProfit=totalstockvalue;\nUPDATE users set totalstockvalue="+output+";\nUPDATE users set tempProfit=totalstockvalue-tempProfit;\nUPDATE users set profit=profit+tempProfit;")