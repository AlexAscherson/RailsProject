# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Prompt.delete_all
Response.delete_all
# Prompt_Response.delete_all
User.delete_all

c1 =  User.create(name:'Lauren', role:'Teacher', email:'lauren@email.com', password: 'password')
c2 =  User.create(name:'Dan', role:'Teacher', email:'dan@email.com', password: 'password')

c3 =  User.create(name:'Alex', role:'Student', email:'alex@email.com', password: 'password')
c4 =  User.create(name:'Tom', role:'Student', email:'a@email.com', password: 'password')
c5 =  User.create(name:'Betamax Slim', role:'Student', email:'b@email.com', password: 'password')




p1 =  Prompt.create(name: 'First Prompt', user_id: 1)
p2 =  Prompt.create(name: 'Second Prompt', user_id: 2)

r1 =  Response.create(prompt_id: '1', user_id: '3', content: 'I understood this part of the lesson')
r2 =  Response.create(prompt_id: '1', user_id: '4', content: 'I understood this part of the lesson')
r3 =  Response.create(prompt_id: '1', user_id: '5', content: 'I understood this part of the lesson')
r4 =  Response.create(prompt_id: '2', user_id: '3', content: 'I understood this part of the lesson')
r5 =  Response.create(prompt_id: '2', user_id: '4', content: 'I understood this part of the lesson')



# # Create order objects (the customer_id column will be assigned the customer
#   # id)
# o1 = c1.orders.create(order_reference: 'f34325g', amount: 200)
# o2 = c2.orders.create(order_reference: 'f34425g', amount: 500)
# o3 = c3.orders.create(order_reference: 'f32325g', amount: 300)

# # you can also do (method 2)

# Order.create(order_reference: '3248792', amount: 70, customer_id: c1.id)

# # You can also do (method 3)
# o3 = Order.create(order_reference: '234242', amount: 50)
# o3.customer_id = c1.id
# o3.save

# #Assign products to orders
# o1.order_products.create(product_id: p1.id)
# o1.order_products.create(product_id: p3.id)
# o3.order_products.create(product_id: p4.id)
# p1.order_products.create(order_id: o3.id)

# # Creating a profile object and assigning it to a customer
# pr1 = Profile.create(twitter_handle: 'mathilda', email: 'mathilda@genassembly.ly')
# pr1.customer_id = c1.id
# pr1.save

# # Method 2
# pr2 = Profile.create(twitter_handle: 'john', email: 'john@genassembly.ly' customer_id: c2.id)







