array = [["kashimo","gojo","sukuna","yuta","takaba","yuji","higuruma","nobara","megumi","maki","kenjaku","hakari","uraume","uiui","ino","kusakabe","miguel","todo","choso","miwa","mechamaru","shoko","meimei","panda","inumaki","utahime","gakuganji","hana"],
         [2.43,5.05,65.89,25.52,36.01,101.29,3.43,2.53,1.43,34.87,20.25,20.03,22.97,18.41,20.56,10.27,14.02,64.32,2.51,11.09,4.85,18.54,28.16,8.23,34.82,11.12,9.87,10.48]]
output = ""
for i,value in enumerate(array[0]):
    output+= str(value)+"*"+ str(array[1][i])+"+"
output += "money"
print("UPDATE users set tempProfit=totalstockvalue;\nUPDATE users set totalstockvalue="+output+";\nUPDATE users set tempProfit=totalstockvalue-tempProfit;\nUPDATE users set profit=profit+tempProfit;")