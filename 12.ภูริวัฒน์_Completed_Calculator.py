# calculator

from tkinter import *

window = Tk()
window.title("ภูริวัฒน์ แสงระวี")
window.geometry("300x200")

def one() :
    value1 = int(E1.get() )
    value2 = int(E2.get() )
    result = value1 + value2
    result = "result is: %s " %(result)
    L4.config(text = result)

def two() :
    value1 = int(E1.get() )
    value2 = int(E2.get() )
    result = value1 - value2
    result = "result is: %s " %(result)
    L4.config(text = result)

def three() :
    value1 = int(E1.get() )
    value2 = int(E2.get() )
    result = value1 * value2
    result = "result is: %s " %(result)
    L4.config(text = result)

def four() :
    value1 = int(E1.get() )
    value2 = int(E2.get() )
    result = value1 / value2
    result = "result is: %s " %(result)
    L4.config(text = result)

L1 = Label(window,text="Calculator",font=("Arial", 15))
L1.pack()

L2 = Label(window,text="Value 1:",font=("Arial", 10))
L2.place(x= 20, y=40)

L3 = Label(window,text="Value 2:",font=("Arial", 10))
L3.place(x= 20, y=80)

L4 = Label(window,text="Result = ",font=("Arial", 10))
L4.place(x= 20, y=160)

E1 = Entry(window)
E1.place(x= 100, y=40)

E2 = Entry(window)
E2.place(x= 100, y=80)

B1 = Button(window, text="  +  " , command = one)
B1.place(x= 20, y=120)

B2 = Button(window, text="  -  " , command = two)
B2.place(x= 60, y=120)

B3 = Button(window, text="  x  " , command = three)
B3.place(x= 100, y=120)

B3 = Button(window, text="  /  " , command = four)
B3.place(x= 140, y=120)



    
