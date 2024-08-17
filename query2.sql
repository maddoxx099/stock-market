BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=ashaf*39+jukusuke*44.69+ryuuichi*35.84+asuka*33.28+noroi*31+kenji*32.1+asura*27.25+tashiro*25.5+tadashi*24+seina*24+kaze*23+ishika*23.46+akane*23+sado*25.4+alaric*19+gorou*18.54+kaiaku*20.75+arata*15.15+chiyomi*14.7+kuba*20+touka*23.81+abo*20+kazuya*24.2+hanako*21+higeki*20+isamu*20+enki*17.64+yuu*20.2+ue*20+shiro*20+shukei*20+hokama*22.2+wei*20+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;


COMMIT;