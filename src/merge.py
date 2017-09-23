from shutil import copyfile

# This scripts intends to merge mesh file with a interpolated function file
# in order to create a file which has the right format to draw the visual of
# the FEM

values = []
with open("build/draw.txt", 'r') as data:
    for lines in data:
        if not (lines == "\n"):
            values.append( lines.split()[2] )


count = 0
with open("build/meshgrid.txt", "r") as data:
    for line in data:
        if not (line == "\n"):
            if count == 4:
                if not (values == []):
                    del values[0]
                count = 0
                print('\n\n')
            splt = line.split()

            print(splt[0],'    ',splt[1],'    ',values[0])

            count +=1
