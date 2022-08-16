from tkinter import *

window = Tk()
window.title("ภูริวัฒน์ แสงระวี")
window.geometry("300x200")

def cal() :
    score = int(E1.get()  )

    if score < 50 :
        L2.config(text = "คุณได้ F เสียใจด้วย")
    elif score < 60 :
        L2.config(text = "คุณได้ D")
    elif score < 70 :
        L2.config(text = "คุณได้ C")
    elif score < 80 :
        L2.config(text = "คุณได้ B")
    elif score <= 100 :
        L2.config(text = "คุณได้ A")
    else :
        L2.config(text = "คะแนนไม่ควรเกิน 100")

L1 = Label(window , text = "กรุณากรอกคะแนน")
L1.pack()

L2 = Label(window , text = "ผลลัพธ์")
L2.place( x = 125 , y = 150)

E1 =  Entry(window)
E1.place( x = 100 , y = 40 )

B1 = Button(window , text = "คำนวณ" , command = cal )
B1.place( x = 120 , y = 100 )


while True :
    cal()
