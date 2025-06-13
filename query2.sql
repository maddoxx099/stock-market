BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=ashaf*28+jukusuke*50+ryuuichi*43+asuka*33.15+noroi*31.62+kenji*33.7+asura*27.25+tashiro*27.29+tadashi*24+seina*31+kaze*27.9+ishika*27+akane*28+sado*21+alaric*19.57+gorou*20+kaiaku*25+arata*21+chiyomi*17+kuba*24+touka*34+abo*1+kazuya*24.2+hanako*23.1+higeki*21.2+isamu*22.5+enki*17.64+yuu*21.41+ue*20+shiro*20.4+shukei*19+hokama*25.1+wei*20+sanagi*20+meatloaf*1.9+amelie*21+shihai*1+yasu*20+hirioki*20.6+renzo*22.1+kota*24.3+itachi*18.6+hikari*20+sora*20+kairijo*20+aki*22.3+toru*23.4+aoyama*20+dai*20+ikiryo*22+shyythiel*20+ain*22.6+doctor*20+torako*17.8+eiko*21.1+hokori_gojo*21.4+shion*22.3+kizu*20+darius*22.7+yoshinori*20+ghose*20+kaien*20+suzuki*21.8+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;

COMMIT;