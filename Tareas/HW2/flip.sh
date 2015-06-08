#!/bin/bash
#la primera letra se cambia por uno, la segunda por dos, luego 1 por la segunda letra y por último 2 por la primera letra.
sed "s/$1/1/g" "$3" | sed "s/$2/2/g" | sed "s/1/$2/g" | sed "s/2/$1/g" 
