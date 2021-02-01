require 'ruby2d'
require 'csv'

def find_y(lat)
    
    return(3593013.72 - 191150.92 * lat)
end

def find_x(lng)
    
    return(-21663724.6171615000 + 218762.6964730060 * lng)
end

 @img = Image.new("mapth.png", x:0,y:0)

keymappts = CSV.read("keymappts.csv", headers: true, header_converters: :symbol, converters: :all)


keymappts.each do |p|
    Circle.new(x:find_x(p[:lng]), y:find_y(p[:lat]), radius: 5, color: "red")
end



 set(width: 1173, height: 563, background: "blue")

show
