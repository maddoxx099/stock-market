array = [["ashaf", "jukusuke" ,"ryuuichi","asuka","noroi" ,"kenji" ,"asura" ,"tashiro" ,"tadashi","seina" ,"kaze","ishika" ,"akane","sado" ,"alaric" , "gorou","kaiaku",  "arata","chiyomi","kuba","touka","abo", "kazuya","hanako","higeki","isamu","enki","yuu","ue","shiro","shukei","hokama","wei","sanagi","meatloaf","amelie","shihai","yasu","hirioki","renzo","kota","itachi","hikari","sora","kairijo","aki","toru","aoyama","dai","ikiryo","shyythiel","ain","doctor","torako","eiko","hokori_gojo","shion","kizu","darius","yoshinori","ghose","kaien","suzuki","daisuke"],
         [28 , 53.5 , 48.3 , 
        33.15 , 31.62 , 37.07, 27.25, 
        27.29, 24, 31, 29.2, 
        27, 28, 21, 
        19.57, 20, 24.25, 
        22.68, 17, 25.92, 
        34, 1, 24.2, 
        23.1, 21.2, 21.37, 
        17.64, 21.41, 20, 
        20.4, 19, 25.1, 
        21.2, 20, 2.6, 
        21, 1, 20, 
        20.6, 22.1, 24.3, 
        18.6, 20, 20, 
        20, 22.3, 24.57, 
        20, 20, 22, 
        20, 22.6, 20, 
        17.8, 22.57, 21.4, 
        22.3, 20, 22.7, 
        20, 20, 20, 
        21.8,20.6]]
output = ""
for i,value in enumerate(array[0]):
    output+= str(value)+"*"+ str(array[1][i])+"+"
output += "money"
print("UPDATE users set tempProfit=totalstockvalue;\nUPDATE users set totalstockvalue="+output+";\nUPDATE users set tempProfit=totalstockvalue-tempProfit;\nUPDATE users set profit=profit+tempProfit;")