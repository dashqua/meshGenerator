set term png
#set pointsize 20

set view map
#set pm3d explicit

#set xrange [0:3]
#set yrange [0:3]

set output "meshgrid.png"
#data = triangulation 
plot "build/meshgrid.txt" using 1:2:3 with filledcurves palette z


set output "function.png"
#draw = x, y, f(x,y)
splot "build/draw.txt" using 1:2:3 title "" palette z


set output "merged.png"
set title "function f computed via the  Ritz method: \n Barycentric value calculated over the 4 vertices \n of each triangle of a generated squarred grid"
plot "build/merged.txt" using 1:2:3 title "" with filledcurves palette z