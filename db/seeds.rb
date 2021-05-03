# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'user@mail.com', password: '123123')
User.create(email: 'admin@mail.com', password: '123123', is_admin: true)

surfboards = [{model: "Scorpion", brand: "CR Surfboards", price: 648, description: "Amazing board, for middle-level riders on waves from 2-6ft.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/Machado_Seaside_Beyond_TT_Deck-1.png?v=1611869828"},
{model: "Fat Waves", brand: "CR Surfboards", price: 578, description: "Amazing board, for middle-level riders on waves from 2-6ft.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/SD_Houdini_Deck.png?v=1602106435"},
{model: "SuperPro", brand: "Pyzel", price: 858, description: "Amazing board, for middle-level riders on waves from 2-6ft.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/Machado_Sunday_Deck.png?v=1607549763"},
{model: "Flat Earth", brand: "Firewire", price: 898, description: "Amazing board, for middle-level riders on waves from 2-6ft.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/Machado_Seaside_Beyond_TT_Deck-1.png?v=1611869828"},
{model: "Cymatic", brand: "Firewire", price: 648, description: "The Cymatic is an avant-garde, ultra high performance machine. This shape is a hybrid of the Sci-Fi and Omni models so obviously, you can almost imagine the two boards combining.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/Machado_Glazer_Deck.png?v=1602717185"},
{model: "Houdini", brand: "Slater Designs", price: 751, description: "Making it easy to disappear and reappear in Hawaiian tubes, the Houdini is our new magic act for Hawaiian waves, or other locations, where controlled lines through racy barrels are a must.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/SD_Houdini_Deck.png?v=1602106435"},
{model: "Glazer", brand: "Machado", price: 642, description: "Making it easy to disappear and reappear in Hawaiian tubes, the Houdini is our new magic act for Hawaiian waves, or other locations, where controlled lines through racy barrels are a must.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/Machado_Glazer_Deck.png?v=1602717185"},
{model: "Dominator", brand: "FDS", price: 449, description: "Making it easy to disappear and reappear in Hawaiian tubes, the Houdini is our new magic act for Hawaiian waves, or other locations, where controlled lines through racy barrels are a must.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/SD_Houdini_Deck.png?v=1602106435"},
{model: "Sunday", brand: "Machado", price: 656, description: "Making it easy to disappear and reappear in Hawaiian tubes, the Houdini is our new magic act for Hawaiian waves, or other locations, where controlled lines through racy barrels are a must.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/Machado_Sunday_Deck.png?v=1607549763"},
{model: "Legacy", brand: "Mannkine", price: 956, description: "The Legacy is a kite board design that came to be as a result of a lot of feedback from the market and through working with a mad-man kitesurfer named Maciek from Firewire Europe.  I sent out a sample board for him to try, and through a process of many texts and phone calls, and a few tweaks, we are proud to release The Legacy.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/KTE_Legacy_Deck.png?v=1619544012"}
]

accesories = [
{model: "Fins", brand: "Fcs II", price: 48, description: "Designed by Firewire and now constructed with a carbon tissue insert to offer more flex and a smoother feel compared to the original ultra-stiff bamboo version.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/FCS_FW_M__91440.1587010059.1280.1280.jpg?v=1618944837"},
{model: "Hoodie", brand: "Slater Designs", price: 55, description: "Slater Designs Fleece Hoodie | Light weight  | Front zipper | Form Fitted | Cotton | Made In the USA.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/S21FLC0002BLA_Front.jpg?v=1611101912"},
{model: "Leash 6ft", brand: "FCS", price: 34, description: "Leash yourself to the board, you'll never lose it.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/6Reg_660x500__29905.1543454487.1280.1280.jpg?v=1618944849"},
{model: "Grip", brand: "Creature", price: 60, description: "Best grip ever, used by pro-surfers.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/machado_3_piece_arch_black.jpg?v=1618944849"},
{model: "Fins", brand: "Fcs II", price: 48, description: "Designed by Firewire and now constructed with a carbon tissue insert to offer more flex and a smoother feel compared to the original ultra-stiff bamboo version.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/FCS_FW_M__91440.1587010059.1280.1280.jpg?v=1618944837"},
{model: "Hoodie", brand: "Slater Designs", price: 36, description: "Slater Designs Fleece Hoodie | Light weight  | Front zipper | Form Fitted | Cotton | Made In the USA.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/S21FLC0002BLA_Front.jpg?v=1611101912"},
{model: "Board Bag", brand: "Prolite", price: 8.4, description: "Take care of your surfboards with this great board bag.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/BBSE04__32965.1589412411.1280.1280.jpg?v=1618945973"},
{model: "Leash 6ft", brand: "FCS", price: 34, description: "Leash yourself to the board, you'll never lose it.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/6Reg_660x500__29905.1543454487.1280.1280.jpg?v=1618944849"},
{model: "Grip", brand: "Creature", price: 60, description: "Best grip ever, used by pro-surfers.", image_url: "https://cdn.shopify.com/s/files/1/0399/4923/8317/products/machado_3_piece_arch_black.jpg?v=1618944849"}]

surfboards.each do |surfboard|
    Surfboard.create(surfboard)
end

accesories.each do |accesory|
    Accesory.create(accesory)
end