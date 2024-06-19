 
#--------------------------------------------------------IMPORT-----------------------------------------------------------
import mysql.connector as mycon
from PIL import Image
import time
from pynput import keyboard
#---------------------------------------------------Mysql Database--------------------------------------------------------
pdtcon=mycon.connect(host="localhost",user="root",passwd="premansh",database="pcbuilder")
#----------------------------------------------Variable Initialisations---------------------------------------------------
L=[[0],[0],[0],[0],[0],[0]]
U=[[8],[8],[8],[8],[8],[8]]
gpuno=psuno=mobono=coolno=cpuno=ramno=cabno=None
masterbrand=motherbrand='NULL'
fprice=0
psucno=mobocno=coolcno=cpucno=gcno=rcno=None

#------------------------------------------------Auto-select Function-----------------------------------------------------
def autoselect(com):
 sd={0:psucno,1:mobocno,2:coolcno,3:cpucno,4:gcno,5:rcno}
 for i in range(com+1,6):
    if sd[i]!=None:
        L[com].append(sd[i])
        U[com]. append(sd[i])
        return True
 for i in range(com-1,-1,-1):
    if sd[i]!=None:
        L[com].append(sd[i])
        U[com].append(sd[i])
 
        return True
#--------------------------------------Update-limit and Pop-limit Functions-----------------------------------------------
def updatelimit(com,cn) :
 for i in range(com+1,6) :
    U[i].append(cn)
 for i in range(com):

    L[i].append(cn)
def poplimit(com,cn) :
    for i in range(com+1,6):
        U[i].remove(cn)
    for i in range(com):
        L[i].remove(cn)
#-------------------------------------------Keyboard Listener Functions---------------------------------------------------
def on_press(key):
 pass
def on_release(key):#function define kiya on_release jo batayga ki key release hona se kya krna hai
 global n 
 count=0
 global l
 if key==keyboard.Key.right :#agar pressed key enter hua toh yeh krna hai ka statement
 
    if n>=0 and n+1<l :
        n+=1
        print("\033[H\033[J")
        print('\n\nUse left/right arrow keys to move to previous/next product')
        print('\n\nPress enter to select\n\n')
        im=Image.open(pdts[n][4])
        im.show()
        print('product description:\n\n',pdts[n][2],'\n\n')
        if len(pdts[n])==8:
            print('integrated graphics: ',pdts[n][6],'\n')
            print('inbox cooler: ',pdts[n][7],'\n\n')
        print('price- Rs',pdts[n][3],'/-')
        print('\n\nPress enter to select')
        print('\n\nyou can press escape any time to cancel selection\n\n')
 
 elif key==keyboard.Key.left :
 
    if n-1>=0:
        n=n-1
        print("\033[H\033[J")
        print('\n\nUse left/right arrow keys to move to previous/next product')
        print('\n\nPress enter to select')
        im=Image.open(pdts[n][4])
        im.show()
        print('product description:\n\n',pdts[n][2],'\n\n')
        if len(pdts[n])==8:
            print('integrated graphics: ',pdts[n][6],'\n')
            print('inbox cooler: ',pdts[n][7],'\n\n');
            print('price- Rs',pdts[n][3],'/-\n\n')
            print('\n\nPress enter to select')
            print('\n\nyou can press escape any time to cancel selection\n\n')
 elif key==keyboard.Key.enter :
    if len(pdts[n])==8:
        if pdts[n][6]=='no' and gpuno==None:
            print("\033[H\033[J")
            print('You will need a discrete Graphic card to use this cpu\n')
            ch5=input('press c to confirm selection\n\nelse press any other key to cancel selection\n\n')
            if ch5!='c' and ch5!='C':
                n=-1
                return False
 
    print('Item selected\n\n')
    return False
 elif key==keyboard.Key.space :
    count+=1
    pdts.reverse()
    if count%2==0 :
        print('products are now sorted in descending order of price')
    else:
        print('products are now sorted in ascending order of price')
        n=0
 elif key==keyboard.Key.esc :
    n=-1
 
    print('component not selected\n\n')
    time.sleep(2)
    return False
#------------------------------------------------Price-Filter Function-----------------------------------------------------
def pfilter() :
 global llp
 global ulp
 
 ch2=input('press p to add price filter') 
 d={'1':[0,5000],'2':[5000,10000],'3':[10000,20000],'4':[20000,30000],'5':[30000,40000],'6':[40000,50000],'7':[50000,150000]}
 if ch2=='p' or ch2=='P' :
    ch3=input('below Rs 5000\- :press 1\nRs 5000\- - Rs 10000\- :press 2\nRs 10000\- - Rs 20000 :press 3\nRs 20000\- - Rs 30000\- :press 4\nRs 30000 - rs 40000\- :press 5\nRs 40000\- - Rs 50000\- :press 6\nAbove Rs 50000\-:press 7\n\nFor custom filter press c\n\n')
    if ch3 in d.keys() :
        llp=d[ch3][0]
        ulp=d[ch3][1]
    elif ch3=='c' or ch3=='C' :
        llp=int(input('enter bottom limit (in numbers)'))
        ulp=int(input('enter upper limit (in numbers)'))
#-------------------------------------------------Main Menu Starts---------------------------------------------------------
while True :
 llp=0
 ulp=150000
 print("\033[H\033[J")
 print('Choose requried component')
 print('PSU - press 1')
 print('MOTHERBOARD - press 2')
 print('CPU COOLER - press 3')
 print('CPU - press 4')
 print('GPU - press 5')
 print('RAM - press 6')
 print('CABINET-press 7')
 print('To select from Prebuilt Pcs-press 8')
 print('CHECKOUT-press 9\n')
 choice=int(input('Enter choice:'))
 print("\033[H\033[J")
 if choice==1 :
#-----------------------------------------------------psu code-------------------------------------------------------------
    if psuno!=None: #Showing currently selected product
        print('currenty selected psu:\n')
        print(psud,"\n\n\nprice: ",psupr,'\n\n')
    listener=keyboard.Listener(on_press=on_press,on_release=on_release) #initialising listener
    psudat=pdtcon.cursor()#cursor instance
    a=input("to enable auto selection press 'a'\n else press any other key") #autoselection
    if a=='a' or a=='A':
        autoselect(0)
        print('only products matching your selected products are shown.\nselect according to your budget...\n\n')
    else:
        pfilter() #price filter
        st1="select*from psu where CNO >= {} and CNO<= {} and PRICE>= {} and PRICE<= {} order by price desc".format(max(L[0]),min(U[0]),llp,ulp) #Creating query string
        psudat.execute(st1)
        pdts=psudat.fetchall() #extracting data
        l=psudat.rowcount
        if l==0 :
            print('no product found of given specifications\nredirecting to component selection')
        else :
            im=Image.open(pdts[0][4]) #showing first product
            im.show()
            print('product description:\n\n',pdts[0][2],'\n\n')
            print('price- Rs',pdts[0][3],'/-\n\n')
            print('products are sorted in decending order of price\n\nto change sorting press spacebar')
            print('\n\nyou can press escape any time to cancel selection\n\n')
            n=0
            listener.start() #starting listener
            listener.join() #Will continue to listen until return false
            if n!=-1 : #Saving details of selection
                if psuno==None:
                    psuno=n
                    psucno=pdts[psuno][0]
                    updatelimit(0,psucno)
                else:
                    poplimit(0,psucno)
                    fprice-=psupr
                    psuno=n
                    psucno=pdts[psuno][0]
                    updatelimit(0,psucno)
                psud=pdts[psuno][2]
                psupr=pdts[psuno][3]
                fprice+=psupr
                print('Grand Total: ',fprice)
                k=input('To check out, press o \n\nElse press any other key to continue buying')
                if k=='o' or k=='O':
                    break
    
 if choice==2 :
#---------------------------------------------------motherboard code-------------------------------------------------------
    if mobono!=None:
        print('currenty selected cpu:\n')
        print(mobod,"\n\n\nprice: ",mobopr,'\n\n')
    listener=keyboard.Listener(on_press=on_press,on_release=on_release) 
    mobodat=pdtcon.cursor()
 
    if motherbrand=='NULL':
        ch1=input('To add brand filter press b \nelse press any other key\n\n')
        b='NULL'
        if ch1=='b' or ch1=='B' :
            bfilter=int(input('INTEL :press 1\nAMD :press 2\npress any other key for no filter'))
            if bfilter==1 :
                b='amd'
            elif bfilter==2 :
                b='Intel'
    else:
        b=motherbrand
    a=input("to enable auto selection press 'a'\n else press any other key")
    if a=='a' or a=='A':
        autoselect(1)
        print('only products matching your selected products are shown.\nselect according to your budget...\n\n')
    else:
        pfilter()
    st1="select*from motherboard where cno >= {} and cno<= {} and brand!='{}' and price>= {} and price<= {} order by price DESC".format(max(L[1]),min(U[1]),b,llp,ulp)
    mobodat.execute(st1)
    pdts=mobodat.fetchall()
    l=mobodat.rowcount
    if l==0 :
        oo=input('no product found of given specifications\nredirecting to component selection\npress any key')
    else :
       im=Image.open(pdts[0][4])
       im.show()
       print('product description:\n\n',pdts[0][2],'\n\n')
       print('price- Rs',pdts[0][3],'/-\n\n')

       print('products are sorted in decending order of price\n\nto change sorting press spacebar')
       print('\n\npress enter to select')
       print('\n\nyou can press escape any time to cancel selection\n\n')
       n=0
       listener.start() 
       listener.join()
       if n!=-1:
        if mobono==None:
            mobono=n
            mobocno=pdts[mobono][0]
            updatelimit(1,mobocno)
        else:
            poplimit(1,mobocno)
            fprice-=mobopr
            mobono=n
            mobocno=pdts[mobono][0]
            updatelimit(1,cpucno)
        mobod=pdts[mobono][2]
        mobopr=pdts[mobono][3]
        fprice+=mobopr
        if pdts[mobono][5]=='intel' or pdts[mobono][5]=='Intel':
            masterbrand='amd'
        else:
            masterbrand='intel'
        print('Grand Total: ',fprice)
        k=input('To check out, press o \n\nElse press any other key to continue buying')
        if k=='o' or k=='O':
            break
 if choice==3 :
#-----------------------------------------------------cooler code-------------------------------------------------------------
    if coolno!=None:
        print('currenty selected cooler:\n')
        print(coold,"\n\n\nprice: ",coolpr,'\n\n')
    listener=keyboard.Listener(on_press=on_press,on_release=on_release) 
    cooldat=pdtcon.cursor()
    a=input("to enable auto selection press 'a'\n else press any other key")
    if a=='a' or a=='A':
        autoselect(2)
        print('only products matching your selected products are shown.\nselect according to your budget...\n\n')
    else:
        pfilter()
    st1="select*from cooler where CNO >= {} and CNO<= {} and PRICE>= {} and PRICE<= {} order by price desc".format(max(L[2]),min(U[2]),llp,ulp)
    cooldat.execute(st1)
    pdts=cooldat.fetchall()
    l=cooldat.rowcount
    if l==0 :
        print('no product found of given specifications\nredirecting to component selection')
    else :
        im=Image.open(pdts[0][4])
        im.show()
        print('product description:\n\n',pdts[0][2],'\n\n')
        print('price- Rs',pdts[0][3],'/-\n\n')
        print('products are sorted in decending order of price\n\nto change sorting press spacebar')
        print('\n\nyou can press escape any time to cancel selection\n\n')
        n=0
        listener.start() 
        listener.join() 
        if n!=-1:
            if coolno==None:
                coolno=n
                coolcno=pdts[coolno][0]
                updatelimit(2,coolcno)
            else:
                poplimit(2,coolcno)
                fprice-=coolpr
                coolno=n
                coolcno=pdts[coolno][0]
                updatelimit(2,coolcno)
            coold=pdts[coolno][2]
            coolpr=pdts[coolno][3]
            fprice+=coolpr
            print('Grand Total: ',fprice)
            k=input('To check out, press o \n\nElse press any other key to continue buying')
            if k=='o' or k=='O':
                break
 if choice==4 :
#-------------------------------------------------------CPU code---------------------------------------------------------------
    if cpuno!=None:
        print('currenty selected cpu:\n')
        print(cpud,"\n\n\nprice: ",cpupr,'\n\n')
    listener=keyboard.Listener(on_press=on_press,on_release=on_release) 
    cpudat=pdtcon.cursor()
 
    if masterbrand=='NULL':
        ch1=input('To add brand filter press b \nelse press any other key\n\n')
        b='NULL'
        if ch1=='b' or ch1=='B' :
            bfilter=int(input('INTEL :press 1\nAMD :press 2\npress any other key for no filter'))
            if bfilter==1 :
                b='amd'
            elif bfilter==2 :
                b='Intel'
    else:
        b=masterbrand
    a=input("to enable auto selection press 'a'\n else press any other key")
    if a=='a' or a=='A':
        autoselect(3)
        print('only products matching your selected products are shown.\nselect according to your budget...\n\n')
    else:
        pfilter()
    st1="select*from cpu where cno >= {} and cno<= {} and cbrand!='{}' and price>= {} and price<= {} order by price DESC".format(max(L[3]),min(U[3]),b,llp,ulp)
    cpudat.execute(st1)
    pdts=cpudat.fetchall()
    l=cpudat.rowcount
    if l==0 :
        oo=input('no product found of given specifications\nredirecting to component selection\npress any key')
    else :
        im=Image.open(pdts[0][4])
        im.show()
        print('product description:\n\n',pdts[0][2],'\n\n')
        print('price- Rs',pdts[0][3],'/-\n\n')
        print('integrated graphics: ',pdts[0][6],'\n')
        print('inbox cooler: ',pdts[0][7],'\n\n')
        print('products are sorted in decending order of price\n\nto change sorting press spacebar')
        print('\n\npress enter to select')
        print('\n\nyou can press escape any time to cancel selection\n\n')
        n=0
        listener.start() 
        listener.join() 
        if n!=-1:
            if cpuno==None:
                cpuno=n
                cpucno=pdts[cpuno][0]
                updatelimit(3,cpucno)
                if pdts[cpuno][1] in [13,15,16,17,19]:
                    L[5].append(4)
            else:
                poplimit(3,cpucno)
                fprice-=cpupr
                cpuno=n
                cpucno=pdts[cpuno][0]
                updatelimit(3,cpucno)
                if pdts[cpuno][1] in [13,15,16,17,19]:
                    L[5].append(4)
            cpud=pdts[cpuno][2]
            cpupr=pdts[cpuno][3]
            fprice+=cpupr
            if pdts[cpuno][5]=='intel' or pdts[cpuno][5]=='Intel':
                motherbrand='amd'
            else:
                motherbrand='intel'
            print('Grand Total: ',fprice)
            k=input('To check out, press o \n\nElse press any other key to continue buying')
            if k=='o' or k=='O':
                break
 if choice==5 :
#-----------------------------------------------------------GPU code---------------------------------------------------------
    if gpuno!=None:
        print('currenty selected gpu:\n')
        print(gpud,"\n\n\nprice: ",gpupr,'\n\n')
    listener=keyboard.Listener(on_press=on_press,on_release=on_release) 
    gpudat=pdtcon.cursor()
    ch1=input('To add brand filter press b \nelse press any other key\n\n')
    if ch1=='b' or ch1=='B' :
        bfilter=int(input('NVIDIA :press 1\nAMD :press 2\npress any other key for no filter'))
        if bfilter==1 :
            b='amd'
        elif bfilter==2 :
            b='nvidia'
        else :
            b='1'
    else :
        b=1
    a=input("to enable auto selection press 'a'\n else press any other key")
    if a=='a' or a=='A':
        autoselect(4)
        print('only products matching your selected products are shown.\nselect according to your budget...\n\n')
    else:
        pfilter()
    st1="select*from gpu where CNO >= {} and CNO<= {} and brand!='{}' and PRICE>= {} and PRICE<= {} order by price desc".format(min(7,max(L[4])),min(U[4]),b,llp,ulp)
    gpudat.execute(st1)
    pdts=gpudat.fetchall()
    l=gpudat.rowcount
    if l==0 :
        oo=input('no product found of given specifications\nredirecting to component selection\npress any key')
    else :
        im=Image.open(pdts[0][4])
        im.show()
        print('product description:\n\n',pdts[0][2],'\n\n')
        print('price- Rs',pdts[0][3],'/-\n\n')
        print('products are sorted in decending order of price\n\nto change sorting press spacebar')
        print('\n\npress enter to select')
        print('\n\nyou can press escape any time to cancel selection\n\n')
        n=0
        listener.start() 
        listener.join() 
        if n!=-1:
            if gpuno==None:
                gpuno=n
                gcno=pdts[gpuno][0]
                updatelimit(4,gcno)
            else:
                poplimit(4,gcno)
                fprice-=gpupr
                gpuno=n
                gcno=pdts[gpuno][0]
                updatelimit(4,gcno)
            gpud=pdts[gpuno][2]
            gpupr=pdts[gpuno][3]
            fprice+=gpupr
            print('Grand Total: ',fprice)
            k=input('To check out, press o \n\nElse press any other key to continue buying')
            if k=='o' or k=='O':
                break
 if choice==6:
#-----------------------------------------------------ram code---------------------------------------------------------------
    if ramno!=None:
        print('currenty selected ram:\n')
        print(ramd,"\n\n\nprice: ",rampr,'\n\n')
    listener=keyboard.Listener(on_press=on_press,on_release=on_release) 
    ramdat=pdtcon.cursor()
    a=input("to enable auto selection press 'a'\n else press any other key")
    if a=='a' or a=='A':
        autoselect(5)
        if max(L[5])>=5:
            nor=2
        else:
            nor=1
        print('only products matching your selected products are shown.\nselect according to your budget...\n\n')
    else:
        pfilter()
    st1="select*from ram where CNO >= {} and CNO<= {} and PRICE>= {} and PRICE<= {} order by price desc".format(min(5,max(L[5])),min(U[5]),llp,ulp)
    ramdat.execute(st1)
    pdts=ramdat.fetchall()
    l=ramdat.rowcount
    if l==0 :
        oo=input('no product found of given specifications\nredirecting to component selection\npress any key')
    else :
        im=Image.open(pdts[0][4])
        im.show()
        print('product description:\n\n',pdts[0][2],'\n\n')
        print('price- Rs',pdts[0][3],'/-\n\n')
        print('products are sorted in decending order of price\n\nto change sorting press spacebar')
        print('\n\npress enter to select')
        print('\n\nyou can press escape any time to cancel selection\n\n')
        n=0
        listener.start() 
        listener.join() 
        if n!=-1:
            if ramno==None:
                ramno=n
                rcno=pdts[ramno][0]
                updatelimit(5,rcno)
            else:
                poplimit(5,rcno)
                fprice-=rampr
                ramno=n
                rcno=pdts[ramno][0]
                updatelimit(5,rcno)
            if a!='a' and a!='A':
                nor=int(input('enter number of ram sticks you need'))
            ramd=pdts[ramno][2]+' x '+str(nor)
            rampr=nor*pdts[ramno][3]
            fprice+=rampr
            print('Grand Total: ',fprice)
            k=input('To check out, press o \n\nElse press any other key to continue buying')
            if k=='o' or k=='O':
                break
 if choice==7 :
#-----------------------------------------------------cabinet code---------------------------------------------------------
    if cabno!=None:
        print('currenty selected cabinet:\n')
        print(cabd,"\n\n\nprice: ",cabpr,'\n\n')
    listener=keyboard.Listener(on_press=on_press,on_release=on_release) 
    cabdat=pdtcon.cursor()
    pfilter()
    st1="select*from cabinet where PRICE>= {} and PRICE<= {} order by price desc".format(llp,ulp)
    cabdat.execute(st1)
    pdts=cabdat.fetchall()
    l=cabdat.rowcount
    print("\033[H\033[J")
    if l==0 :
        print('no product found of given specifications\nredirecting to component selection')
    else :
        im=Image.open(pdts[0][4])
        im.show()
        print('product description:\n\n',pdts[0][2],'\n\n')
        print('price- Rs',pdts[0][3],'/-\n\n')
        print('products are sorted in decending order of price\n\nto change sorting press spacebar')
        print('\n\nyou can press escape any time to cancel selection\n\n')
        n=0
        listener.start() 
        listener.join() 
        if n!=-1 :
            if cabno==None:
                cabno=n
            else:
                fprice-=cabpr
                cabno=n
            cabd=pdts[cabno][2]
            cabpr=pdts[cabno][3]
            fprice+=cabpr
            print('Grand Total: ',fprice)
            k=input('To check out, press o \n\nElse press any other key to continue buying')
            if k=='o' or k=='O':
                break
#-----------------------------------------------Pre-Built Options---------------------------------------------------------
 if choice==8:
    print('select from the given budgets') #Menus for Budget
    print('20000/- press 1')
    print('40000/- press 2')
    print('60000/- press 3')
    print('100000/- press 4')
    print('150000/- press 5')
    print('250000/- press 6')
    uprice=int(input('choose your budget'))
    #List of serial no. of products in each composition
    aso=[[5,10,-1,3,-1,5,1],[4,7,-1,7,21,6,2],[4,8,-1,10,14,5,4],[3,3,3,18,8,3,5],[2,4,2,19,2,1,6],[2,1,1,20,1,1,7]]
    if uprice in [3,4,5]: #Number of RAM sticks
        nor=2
    elif uprice==6:
        nor=4
    elif uprice in [1,2]:
        nor=1
    else:
        print('invalid input\nRedirecting to component selection....')
        time.sleep(3)
        pass
    #Extracting all the products in the selected composition from Database one by one....
    psudat=pdtcon.cursor()
    st1="select*from psu where sno= {} ".format(aso[uprice-1][0])
    psudat.execute(st1)
    pdts=psudat.fetchone()
    psuno=pdts[1]
    psud=pdts[2]
    psupr=pdts[3]
    fprice+=psupr
    
    mobodat=pdtcon.cursor()
    st1="select*from motherboard where sno= {} ".format(aso[uprice-1][1])
    mobodat.execute(st1)
    pdts=mobodat.fetchone()
    mobono=pdts[1]
    mobod=pdts[2]
    mobopr=pdts[3]
    fprice+=mobopr
    
    cooldat=pdtcon.cursor()
    st1="select*from cooler where sno= {} ".format(aso[uprice-1][2])
    cooldat.execute(st1)
    pdts=cooldat.fetchone()
    
    if pdts!=None: #CPU Cooler not in composition
        coolno=pdts[1]
        coold=pdts[2]
        coolpr=pdts[3]
        fprice+=coolpr
    
    cpudat=pdtcon.cursor()
    st1="select*from cpu where sl_no= {} ".format(aso[uprice-1][3])
    cpudat.execute(st1)
    pdts=cpudat.fetchone()
    cpuno=pdts[1]
    cpud=pdts[2]
    cpupr=pdts[3]
    fprice+=cpupr
    
    gpudat=pdtcon.cursor()
    st1="select*from gpu where sno= {} ".format(aso[uprice-1][4])
    gpudat.execute(st1)
    pdts=gpudat.fetchone()
    
    if pdts!=None: #GPU not in composition
        gpuno=pdts[1]
        gpud=pdts[2]
        gpupr=pdts[3]
        fprice+=gpupr
    
    ramdat=pdtcon.cursor()
    st1="select*from ram where sno= {} ".format(aso[uprice-1][5])
    ramdat.execute(st1)
    pdts=ramdat.fetchone()
    ramno=pdts[1]
    ramd=pdts[2]+' x '+str(nor)
    rampr=pdts[3]*nor
    fprice+=rampr
    
    cabdat=pdtcon.cursor()
    st1="select*from cabinet where sl_no= {} ".format(aso[uprice-1][6])
    cabdat.execute(st1)
    pdts=cabdat.fetchone()
    cabno=pdts[1]
    cabd=pdts[3]
    cabpr=pdts[2]
    fprice+=cabpr
    break

 if choice==9: #Checkout
    break
 if choice not in [1,2,3,4,5,6,7,8,9]:
    print('invalid input\nRedirecting to component selection....')
    time.sleep(3)
    pass

#--------------------------------------------------Checkout-Code-----------------------------------------------------
print("\033[H\033[J")
print('FINAL BILLING-')
print('____________________________________________________________________________________________________________')
if psuno!=None:
 print('PSU:')
 print(' ',psud)
 print(' ',psupr,'/-\n\n')
if mobono!=None:
 print('MOTHERBOARD:')
 print(' ',mobod)
 print(' ',mobopr,'/-\n\n')
if coolno!=None:
 print('COOLER:')
 print(' ',coold)
 print(' ',coolpr,'/-\n\n')
if cpuno!=None:
 print('CPU:')
 print(' ',cpud)
 print(' ',cpupr,'/-\n\n')
if gpuno!=None:
 print('Graphic Card:')
 print(' ',gpud)
 print(' ',gpupr,'/-\n\n')
if ramno!=None:
 print('RAM:')
 print(' ',ramd)
 print(' ',rampr,'/-\n\n')
if cabno!=None:
 print('CABINET:')
 print(' ',cabd)
 print(' ',cabpr,'/-\n\n')
print('____________________________________________________________________________________________________________')
print('GRAND TOTAL- ',fprice,'/-')
pdtcon.close()