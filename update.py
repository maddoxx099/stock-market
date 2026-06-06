array = [["ashaf", "jukusuke" ,"ryuuichi","asuka","noroi" ,"kenji" ,"asura" ,"tashiro" ,"tadashi","seina" ,"kaze","ishika" ,"akane","sado" ,"alaric" , "gorou","kaiaku",  "arata","chiyomi","kuba","touka","abo", "kazuya","hanako","higeki","isamu","enki","yuu","ue","shiro","shukei","hokama","wei","sanagi","meatloaf","amelie","shihai","yasu","hirioki","renzo","kota","itachi","hikari","sora","kairijo","aki","toru","aoyama","dai","ikiryo","shyythiel","ain","doctor","torako","eiko","hokori_gojo","shion","kizu","darius","yoshinori","ghose","kaien","suzuki","daisuke","cordyscomycetes","mayumi","ashigin","sumire"],
         [27 , 61 , 48 , 
        33 , 36.63 , 1, 27, 
        27.29, 25.44, 32, 23, 
        27, 26.6, 22, 
        19.57, 21.5, 22, 
        20.4, 20.4, 25.92, 
        30, 1, 26, 
        23.1, 24, 19, 
        17.64, 23, 18, 
        19.5, 18, 25.1, 
        22, 20, 1, 
        22.68, 1, 20, 
        20.6, 24, 24.3, 
        18.6, 20, 20, 
        20, 22.3, 22.13, 
        20, 20, 19, 
        21, 21.7, 20, 
        17.8, 21.4, 21.4, 
        1, 20.5, 22.5, 
        22.4, 20, 20, 
        22.45 ,20, 25,
        19, 20, 20]]
output = ""
for i,value in enumerate(array[0]):
    output+= str(value)+"*"+ str(array[1][i])+"+"
output += "money"
print("UPDATE users set tempProfit=totalstockvalue;\nUPDATE users set totalstockvalue="+output+";\nUPDATE users set tempProfit=totalstockvalue-tempProfit;\nUPDATE users set profit=profit+tempProfit;")