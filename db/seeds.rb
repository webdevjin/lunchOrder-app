# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Begin processing seed file"

User.destroy_all
Lunch.destroy_all
Student.destroy_all
Order.destroy_all
LineItem.destroy_all
Cart.destroy_all

user_1 = User.create(name:'test1', email:'test1@wdi.com', password:'pass')
user_2 = User.create(name:'test2', email:'test2@wdi.com', password:'pass')
user_3 = User.create(name:'test3', email:'test3@wdi.com', password:'pass')
user_4 = User.create(name:'test4', email:'test4@wdi.com', password:'pass')
user_5 = User.create(name:'test5', email:'test5@wdi.com', password:'pass')
user_6 = User.create(name:'test6', email:'test6@wdi.com', password:'pass')
user_7 = User.create(name:'test7', email:'test7@wdi.com', password:'pass')

student_1 = Student.create(name:'Sally', grade:'1T')
student_2 = Student.create(name:'Tom', grade:'4A')
student_3 = Student.create(name:'Greg', grade:'3S')
student_4 = Student.create(name:'John', grade:'2E')
student_5 = Student.create(name:'Rose', grade:'6R')
student_6 = Student.create(name:'Lara', grade:'4C')
student_7 = Student.create(name:'Helen', grade:'5F')

lunch_1 = Lunch.create(lunchname:'Macaroni & cheese', description:'Macaroni baked with cheese', image_url:'mccheese.png', price:300)
lunch_2 = Lunch.create(lunchname:'Chicken Sticks', description:"Skewer of grilled chicken", image_url:'chicstix', price:425)
lunch_3 = Lunch.create(lunchname:'Pasta Salad', description:"Mix of pasta, greenleaves with vinigrette dressing", image_url:'salad.png', price:550)
lunch_4 = Lunch.create(lunchname:'Fried rice', description:"Fried rice with eggs and vege", image_url:'friedrice.png', price:450)
lunch_5 = Lunch.create(lunchname:'Pasta Napolitana', description:'Pasta in tomato sauce', image_url:'napolitana.png', price:500)
lunch_6 = Lunch.create(lunchname:'Pizza', description:'Pizza with cheese', image_url:'pizza.png', price:380)
lunch_7 = Lunch.create(lunchname:'Fish Burger', description:'Fish burger', image_url:'burger.png', price:650)
lunch_8 = Lunch.create(lunchname:'Raisin bread', description:'', image_url:'', price:180)
lunch_9 = Lunch.create(lunchname:'Carrot Stick', description:'', image_url:'', price:180)

order_1 = Order.create(user_id:'user_1.id')
order_2 = Order.create(user_id:'user_2.id')
order_3 = Order.create(user_id:'user_3.id')
order_4 = Order.create(user_id:'user_4.id')
order_5 = Order.create(user_id:'user_5.id')
order_6 = Order.create(user_id:'user_6.id')
order_7 = Order.create(user_id:'user_7.id')

cart_1 = Cart.create(user_id:'user_1.id')
cart_2 = Cart.create(user_id:'user_2.id')
cart_3 = Cart.create(user_id:'user_3.id')

lineItem_1 = LineItem.create(user_id: user_1.id, student_id: student_1.id, order_id: order_1.id, lunch_id: lunch_1.id, qty:1)
# lineItem_2 = LineItem.create(user_id:'user_2.id', student_id:'student_3.id', cart_id:'cart_2.id', lunch_id:'lunch_2.id', qty:2)
# lineItem_3 = LineItem.create(user_id:'user_3.id', student_id:'student_2.id', cart_id:'cart_3.id', lunch_id:'lunch_3.id', qty:1)

puts "Seed file is now complete"
