BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=ashaf*39+jukusuke*44.69+ryuuichi*35.84+asuka*33.28+noroi*31+kenji*62+asura*32.1+tashiro*27.25+tadashi*25.5+seina*24+kaze*24+ishika*23+akane*23.46+sado*23+alaric*25.4+gorou*19+kaiaku*18.54+arata*20.75+chiyomi*15.15+kuba*14.7+touka*21.6+abo*23.81+kazuya*20+hanako*24.2+higeki*21+isamu*20+enki*20+yuu*17.64+ue*20.2+shiro*20+shukei*20+hokama*20+wei*22.2+sanagi*20+meatloaf*20+amelie*1.6+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;

COMMIT;