# meshGenerator
My first attempt of creating a mesh grid.


#Installation
no installation needed, ready after being git-cloned

#Use
Unlike my former projects, please avoid using 'make' without any parameters.
Here 4 parameters are needed: NA, NB, A, and B
To simplify, consider a mesh of a rectangle of base A and height B, with small rectangle elements of base NA and height NB.
Note that it is possible to mesh any type of orthogonal rectangle (by this, I mean non parallelogram) with any type of small rectangles.
So just type:
    make NA=100 NB=100 A=5 B=5
