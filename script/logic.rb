def addCommand(e, key)
    key == "=" ? (command proc { e.value = eval e.value }) : 
                 (command proc { e.insert("end", key) })
end

def newButton(root, e, key)
    btn = TkButton.new(root) do
        text key
        padx 20
        width 2

        background 'white'
        relief 'raised'

        addCommand(e, key)
    end

    btn
end
