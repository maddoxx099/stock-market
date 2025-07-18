BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=ashaf*28+jukusuke*53.5+ryuuichi*48.3+asuka*33.15+noroi*31.62+kenji*37.07+asura*27.25+tashiro*27.29+tadashi*24+seina*31+kaze*29.2+ishika*27+akane*28+sado*21+alaric*19.57+gorou*20+kaiaku*24.25+arata*21+chiyomi*17+kuba*25.92+touka*34+abo*1+kazuya*24.2+hanako*23.1+higeki*21.2+isamu*21.37+enki*17.64+yuu*21.41+ue*20+shiro*20.4+shukei*19+hokama*25.1+wei*21.2+sanagi*20+meatloaf*2.6+amelie*21+shihai*1+yasu*20+hirioki*20.6+renzo*22.1+kota*24.3+itachi*18.6+hikari*20+sora*20+kairijo*20+aki*22.3+toru*24.57+aoyama*20+dai*20+ikiryo*22+shyythiel*20+ain*22.6+doctor*20+torako*17.8+eiko*21.1+hokori_gojo*21.4+shion*22.3+kizu*20+darius*22.7+yoshinori*20+ghose*20+kaien*20+suzuki*21.8+daisuke*20.6+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;

COMMIT;