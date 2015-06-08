#!/bin/bash
#Se guarda el texto del archivo en otro
cat $1 > 1.txt
for i in {1..10}
do
#se hacen los reemplazos adecuados invocando el otro script
sh ./flip.sh z v 1.txt > a.txt 
sh ./flip.sh y h a.txt > b.txt
sh ./flip.sh x p b.txt > c.txt
sh ./flip.sh w u c.txt > d.txt
sh ./flip.sh v z d.txt > e.txt
sh ./flip.sh u s e.txt > f.txt
sh ./flip.sh t f f.txt > g.txt
sh ./flip.sh s g g.txt > h.txt
sh ./flip.sh r x h.txt > i.txt
sh ./flip.sh q e i.txt > j.txt
sh ./flip.sh p d j.txt > k.txt
sh ./flip.sh o r k.txt > l.txt
sh ./flip.sh n m l.txt > m.txt
sh ./flip.sh m b m.txt > n.txt
sh ./flip.sh l j n.txt > o.txt
sh ./flip.sh k a o.txt > p.txt
sh ./flip.sh j c p.txt > q.txt
sh ./flip.sh i y q.txt > r.txt
sh ./flip.sh h k r.txt > s.txt
sh ./flip.sh g t s.txt > t.txt
sh ./flip.sh f q t.txt > u.txt
sh ./flip.sh e o u.txt > v.txt
sh ./flip.sh d l v.txt > w.txt
sh ./flip.sh c w w.txt > x.txt
sh ./flip.sh b n x.txt > y.txt
sh ./flip.sh a i y.txt > z.txt
#Se guarda el ultimo resultado de los reemplazos con el nombre con el que el ciclo inicia
mv z.txt 1.txt
#Se eliminan archivos temporales
rm a.txt 
rm b.txt
rm c.txt
rm d.txt
rm e.txt
rm f.txt
rm g.txt
rm h.txt
rm i.txt
rm j.txt
rm k.txt
rm l.txt
rm m.txt
rm n.txt
rm o.txt
rm p.txt
rm q.txt
rm r.txt
rm s.txt
rm t.txt
rm u.txt
rm v.txt
rm w.txt
rm x.txt
rm y.txt
done
#Se muestra el resultado al final del ciclo
cat 1.txt
#se elimina el último archivo temporal
rm 1.txt
