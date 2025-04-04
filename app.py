import numpy as np
import tkinter as tk  # Importer tkinter

if __name__ == "__main__":
    # Créer la fenêtre principale
    root = tk.Tk()
    root.title("Orion Trading Software")  

    # Créer un label avec le texte "Hello World"
    label = tk.Label(root, text="Hello World")
    label.pack(pady=20)  # Ajouter du remplissage vertical

    root.mainloop()