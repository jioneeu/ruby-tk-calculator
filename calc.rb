require 'tk'
require './logic.rb'

root = TkRoot.new { title "Calculator" }

# display expr and the result
number_entry = TkEntry.new(root)
number_entry.grid :row => 0, :columnspan => 4
number_entry.width = 30

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
    end
    x += 1
end

Tk.mainloop
