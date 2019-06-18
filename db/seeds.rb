# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users:
u1= User.create(f_name: "Gustavo", l_name: "Vicuna", email: "gpvicuna@miuandes.cl")
u2= User.create(f_name: "Joaquín", l_name: "Gonzalez", email: "jgonzalez@miuandes.cl")

# Products:
p1= Product.create(brand: "Samsung", model: "Galaxy S9", variant: "black", price: 499990, s_description: "A galaxy in your hang", l_description: "Etc...", type_p: "handset")
p2= Product.create(brand: "Samsung", model: "Galaxy S9", variant: "white", price: 499990, s_description: "A galaxy in your hang", l_description: "Etc...", type_p: "handset")
p3= Product.create(brand: "Apple", model: "Iphone 8", price: 699990, s_description: "It's not overpriced", l_description: "Etc...", type_p: "handset")
p4= Product.create(brand: "Apple", model: "Iphone X", price: 999990, s_description: "Well, maybe a little overpriced", l_description: "Etc...", type_p: "handset")
p5= Product.create(brand: "Huawei", model: "Huawei P30", variant: "black", price: 599990, s_description: "Redefine the rules of photography", l_description: "Etc...", type_p: "handset")

# Addresses
a1 = Address.create(phone: "+56982607830", line1: "Espoz 5430", city: "Santiago", country: "Chile", zip_code: 7550000, user: u1)
a2 = Address.create(phone: "+56982607830", line1: "San Carlos de Apoquindo 857", city: "Santiago", country: "Chile", zip_code: 7550000, user: u1)
a3 = Address.create(phone: "+56912345678", line1: "Estoril 1130", line2: "Dpto. 302", city: "Santiago", country: "Chile", zip_code: 7550000, user: u2)

#Orders
o1= Order.create(user: u1, b_address: a1, s_address: a2)
o2= Order.create(user: u1, b_address: a1, s_address: a2)
o3= Order.create(user: u2, b_address: a3, s_address: a3)

#Product_orders
ProductOrder.create([{order: o1, product: p1}, {order: o1, product: p3}, {order: o2, product: p2}, {order: o2, product: p4}, {order: o3, product: p5}, {order: o3, product:p5}])