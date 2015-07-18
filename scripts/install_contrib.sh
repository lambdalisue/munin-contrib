#!/usr/bin/env bash
ROOT=$(cd $(dirname $0); pwd)

SERVICEDIR=/etc/munin/plugins
SCONFDIR=/etc/munin/plugin-conf.d

for src in $(ls $ROOT/plugins); do
    src="$ROOT/plugins/$src"
    ln -sf $src "$SERVICEDIR/$(basename $src)"
done

for src in $(ls $ROOT/plugin-conf.d); do
    src="$ROOT/plugin-conf.d/$src"
    ln -sf $src "$SCONFDIR/$(basename $src)"
done

service munin-node restart
