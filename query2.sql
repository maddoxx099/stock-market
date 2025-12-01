BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=ashaf*27+jukusuke*59.92+ryuuichi*46.36+asuka*31.16+noroi*36.63+kenji*37.07+asura*29.43+tashiro*27.29+tadashi*25.44+seina*32+kaze*29.2+ishika*27+akane*26.6+sado*22+alaric*19.57+gorou*21.5+kaiaku*26.1+arata*20.4+chiyomi*20.4+kuba*25.92+touka*34+abo*1+kazuya*24.2+hanako*23.1+higeki*21.2+isamu*21.37+enki*17.64+yuu*21.41+ue*18+shiro*19.5+shukei*18+hokama*25.1+wei*21.2+sanagi*20+meatloaf*1.5+amelie*22.68+shihai*1+yasu*20+hirioki*20.6+renzo*22.1+kota*24.3+itachi*18.6+hikari*20+sora*20+kairijo*20+aki*22.3+toru*22.13+aoyama*20+dai*20+ikiryo*21.4+shyythiel*21+ain*21.7+doctor*20+torako*17.8+eiko*21.4+hokori_gojo*21.4+shion*1+kizu*20.5+darius*22.5+yoshinori*22.4+ghose*20+kaien*20+suzuki*22.45+daisuke*20+cordyscomycetes*20+mayumi*20+ashigin*20+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;

COMMIT;