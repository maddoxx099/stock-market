BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=ashaf*42+jukusuke*44.69+ryuuichi*35.84+asuka*33.28+noroi*31+kenji*32.1+asura*27.25+tashiro*25.5+tadashi*24+seina*24+kaze*23+ishika*23.46+akane*23+sado*21+alaric*19+gorou*18+kaiaku*17+arata*15.15+chiyomi*14+kuba*20+touka*20+abo*20+kazuya*20+hanako*21+higeki*20+isamu*20+enki*20+yuu*20.2+ue*20+shiro*20+shukei*20+hokama*20+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;

COMMIT;