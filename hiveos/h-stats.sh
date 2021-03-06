#!/usr/bin/env bash

stats_raw=`curl --connect-timeout 2 --max-time 5 --silent --noproxy '*' http://127.0.0.1:60050`

khs=`echo $stats_raw | jq -r '.hashrate.total[0]'`
stats=`echo $stats_raw | jq '{hs: [.hashrate.threads[][0]], hs_units: "khs", uptime: .connection.uptime, ar: [.results.shares_good, .results.shares_total - .results.shares_good], algo: "wildkeccak"}'`
#echo $khs
#echo $stats
