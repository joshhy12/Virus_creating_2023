import tkinter as tk
from tkinter import messagebox

msg1 = messagebox.showinfo("try to closing", "hello there")
msg2 = messagebox.showwarning("keep trying", "I' the hacker")
msg3 = messagebox.showerror("you can close it", "Accessing files")
msg4 = messagebox.showwarning("never closed", "Reading data")

root = tk.Tk()
root.mainloop()
