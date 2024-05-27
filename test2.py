import tkinter as tk

root = tk.Tk()
root.title("Hello")

def change_text():
    label.config(text="Text changed!")

label = tk.Label(root, text="Hello there")
label.pack()

button = tk.Button(root, text="Change Text", command=change_text)
button.pack()

root.mainloop()
