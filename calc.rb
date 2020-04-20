require 'tk'

entry = TkEntry.new.pack('side'=>'top', 'fill' => 'x', 'expand'=>'true')

pad1 = TkFrame.new { pack('side'=>'top', 'fill'=>'both', 'expand'=>'true') }
pad2 = TkFrame.new { pack('side'=>'top', 'fill'=>'both', 'expand'=>'true') }
pad3 = TkFrame.new { pack('side'=>'top', 'fill'=>'both', 'expand'=>'true') }
pad4 = TkFrame.new { pack('side'=>'top', 'fill'=>'both', 'expand'=>'true') }

pads = [pad1, pad2, pad3, pad4]

padnum = 0
for i in ["789/", "456*", "123-", "0+=C"]
    padnum += 1
    for j in i.split(//)
        TkButton.new(pads[padnum]) {
            text "#{j}"
            bind('1', proc {entry.value = eval entry.value }) if j == "="
            bind('1', proc {entry.value = ""}) if j == "C"
            bind('1', proc {entry.insert('end', "1")}) if j == "1"
            bind('1', proc {entry.insert('end', "2")}) if j == "2"
            bind('1', proc {entry.insert('end', "3")}) if j == "3"
            bind('1', proc {entry.insert('end', "4")}) if j == "4"
            bind('1', proc {entry.insert('end', "5")}) if j == "5"
            bind('1', proc {entry.insert('end', "6")}) if j == "6"
            bind('1', proc {entry.insert('end', "7")}) if j == "7"
            bind('1', proc {entry.insert('end', "8")}) if j == "8"
            bind('1', proc {entry.insert('end', "9")}) if j == "9"
            bind('1', proc {entry.insert('end', "0")}) if j == "0"
            bind('1', proc {entry.insert('end', "+")}) if j == "+"
            bind('1', proc {entry.insert('end', "-")}) if j == "-"
            bind('1', proc {entry.insert('end', "/")}) if j == "/"
            bind('1', proc {entry.insert('end', "*")}) if j == "*"

            pack('side'=>'left','fill' => 'both','expand'=>'true')
            font TkFont.new('times 12')
        }
    end
end

Tk.mainloop
