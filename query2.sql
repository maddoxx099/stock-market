BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=ashaf*39+jukusuke*46.03+ryuuichi*37.63+asuka*33.28+noroi*31.62+kenji*32.1+asura*27.25+tashiro*27.29+tadashi*24+seina*29.26+kaze*23.69+ishika*23.22+akane*23+sado*25.4+alaric*19.57+gorou*18.54+kaiaku*20.75+arata*16.1+chiyomi*14.7+kuba*21.6+touka*23.81+abo*20+kazuya*24.2+hanako*21+higeki*20+isamu*20+enki*17.64+yuu*21.41+ue*20+shiro*20.6+shukei*20+hokama*22.2+wei*20+sanagi*20+meatloaf*1+amelie*20+shihai*10+yasu*20+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;


COMMIT;