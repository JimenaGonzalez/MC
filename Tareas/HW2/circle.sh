#!/bin/bash
radio=$1
gnuplot<<EOF
set term dumb
set parametric
set xrange [-1:1]
set yrange [-1:1]
unset tics
unset key
unset border
set size ratio 0.5
plot [0:2*pi] cos(t)*$radio, sin(t)*$radio
EOF
