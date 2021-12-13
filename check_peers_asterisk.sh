#!/bin/bash

DOCKER=`docker ps | grep elastix4 | awk '{print $1}'`
PEERS=$(docker exec -i $DOCKER asterisk -rx 'sip show peers'|grep mtt | grep OK | wc -l)
echo $PEERS > /tmp/asterisk_check_peers/count_mtt.log

PEERS=$(docker exec -i $DOCKER asterisk -rx 'sip show peers'|grep 301/301 | grep OK | wc -l)
echo $PEERS > /tmp/asterisk_check_peers/count_301.log

PEERS=$(docker exec -i $DOCKER asterisk -rx 'sip show peers'|grep 303/303 | grep OK | wc -l)
echo $PEERS > /tmp/asterisk_check_peers/count_303.log

PEERS=$(docker exec -i $DOCKER asterisk -rx 'sip show peers'|grep 304/304 | grep OK | wc -l)
echo $PEERS > /tmp/asterisk_check_peers/count_304.log

PEERS=$(docker exec -i $DOCKER asterisk -rx 'sip show peers'|grep 305/305 | grep OK | wc -l)
echo $PEERS > /tmp/asterisk_check_peers/count_305.log

PEERS=$(docker exec -i $DOCKER asterisk -rx 'sip show peers'|grep 307/307 | grep OK | wc -l)
echo $PEERS > /tmp/asterisk_check_peers/count_307.log

PEERS=$(docker exec -i $DOCKER asterisk -rx 'sip show peers'|grep 308/308 | grep OK | wc -l)
echo $PEERS > /tmp/asterisk_check_peers/count_308.log
