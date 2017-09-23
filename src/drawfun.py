from fun import f

def readMeshGrid():
    global filename
 #   localFile = open(filename,'r')
 #   data = localFile.read()
 #   localFile.close()

    elements = {}
    X = []
    Y = []
    n = 0
    element = []
    jump = False
    baryX = 0
    baryY = 0
    
    with open(filename, 'r') as data:
        for lines in data:
            if lines != "\n":
                element = lines.split()
#                print(element)
                X.append(float(element[0]))
                Y.append(float(element[1]))
            else:
                if not jump:
#                    print('sum of X coords ',sum(X))
#                    print('sum of Y coords ', sum(Y))
                    baryX = sum(X)/4
                    baryY = sum(Y)/4
                    print(baryX, baryY, f(baryX,baryY) )
                    jump = True
                else:
                    print('\n')
                    X = []
                    Y = []
                    n = n+1
                    jump = False
#    print("number of elements : ",n)
        

filename = "/home/thomas/scripts/FEM/build/meshgrid.txt"
readMeshGrid()
