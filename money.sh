#!/bin/bash

psql -U postgres -d investors -c "UPDATE users SET money=money+60;"
psql -U postgres -d investors -c "UPDATE users SET totalstockvalue=totalstockvalue+60;"
