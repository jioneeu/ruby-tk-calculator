require 'tk'

def newButton(root, number_entry, number)
    btn = TkButton.new(root) do
        text number
        padx 20
        width 2

        background 'white'
        relief 'raised'

        command proc { number_entry.insert("end", number) }
    end

    btn
end

root = TkRoot.new { 
    title "Calculator" 
    geometry "400x300"
}

# display expr and the result
number_entry = TkEntry.new(root)
number_entry.grid :row => 0, :columnspan => 3

# number pads

pads = ["789/", "456*", "123-", "0.=+"]
x = 1
for row in pads do
    row = row.split('')
    y = 0
    for key in row do
        btn = newButton(root, number_entry, key)
        btn.grid("row"=>x, "column"=>y)
        y += 1
        puts "#{x} #{y}"
    end
    x += 1
end
=begin
btn7 = newButton(root, number_entry, "7")
btn8 = newButton(root, number_entry, "8")
btn9 = newButton(root, number_entry, "9")
btn_div = newButton(root, number_entry, "/")
btn7.grid :row => 1, :column => 0
btn8.grid :row => 1, :column => 1
btn9.grid :row => 1, :column => 2
btn_div.grid :row => 1, :column => 3

btn4 = newButton(root, number_entry, "4")
btn5 = newButton(root, number_entry, "5")
btn6 = newButton(root, number_entry, "6")
btn_mult = newButton(root, number_entry, "*")
btn4.grid :row => 2, :column => 0
btn5.grid :row => 2, :column => 1
btn6.grid :row => 2, :column => 2
btn_mult.grid :row => 2, :column => 3

btn1 = newButton(root, number_entry, "1")
btn2 = newButton(root, number_entry, "2")
btn3 = newButton(root, number_entry, "3")
btn_sub = newButton(root, number_entry, "-")
btn1.grid :row => 3, :column => 0
btn2.grid :row => 3, :column => 1
btn3.grid :row => 3, :column => 2
btn_sub.grid :row => 3, :column => 3

btn0 = newButton(root, number_entry, "0")
btn_dec = newButton(root, number_entry, ".")
btn_eq = newButton(root, number_entry, "=")
btn_add = newButton(root, number_entry, "+")
btn0.grid :row => 4, :column => 0
btn_dec.grid :row => 4, :column => 1
btn_eq.grid :row => 4, :column => 2
btn_add.grid :row => 4, :column => 3
=end

Tk.mainloop
