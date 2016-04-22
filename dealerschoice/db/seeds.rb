
# first_gen = Tag.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)

# second_gen = []
# second_gen << 2.times {first_gen.children.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)}

# third_gen = []
# third_gen = second_gen.each do {|tag| 2.times {tag.children.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)}}

tags = [
  "Spirituous",
  "Straight_Forward_1",
  "Smokey_1",
  "Smooth_1",
  "Light_1",
  "Dark_1",
  "Complex_1",
  "Vegetal_1",
  "Bitter_1",
  "Smokey_2",
  "Smooth_2",
  "Dark_2",
  "Light_2",
  "Complex_2",
  "Straight_Forward_2",
  "Vegetal_2",
  "Bitter_2",
  "Light_3",
  "Dark_3",
  "Light_4",
  "Dark_4",
  "Fruity_1",
  "Crisp_1",
  "Decadent",
  "Crisp_2",
  "Citrus",
  "Clove",
  "Tropical",
  "Berry_1",
  "Bubbly",
  "Still",
  "Fruity_2",
  "Herbal",
  "Stonefruit",
  "Berry_2",
  "Gentle"]

tags.each do |tag|
  Tag.create(name: tag, description: "This sure makes a tasty drink.")
end

# Spiritous
Tag.find(1).children << Tag.find(2)
Tag.find(1).children << Tag.find(7)
# Straight_forward_1
Tag.find(2).children << Tag.find(3)
Tag.find(2).children << Tag.find(4)
# Smooth_1
Tag.find(4).children << Tag.find(5)
Tag.find(4).children << Tag.find(6)
# Complex_1
Tag.find(7).children << Tag.find(8)
Tag.find(7).children << Tag.find(9)
# Vegetal
Tag.find(8).children << Tag.find(12)
Tag.find(8).children << Tag.find(13)
# Bitter
Tag.find(9).children << Tag.find(10)
Tag.find(9).children << Tag.find(11)
# Complex_2
Tag.find(14).children << Tag.find(16)
Tag.find(14).children << Tag.find(17)
# Vegetal_2
Tag.find(16).children << Tag.find(18)
Tag.find(16).children << Tag.find(19)
# Bitter_2
Tag.find(17).children << Tag.find(26)
Tag.find(17).children << Tag.find(27)
# Straight_forward_2
Tag.find(15).children << Tag.find(20)
Tag.find(15).children << Tag.find(21)
# Light_4
Tag.find(20).children << Tag.find(22)
Tag.find(20).children << Tag.find(23)
# Fruity_1
Tag.find(22).children << Tag.find(28)
Tag.find(22).children << Tag.find(29)
# Crisp_1
Tag.find(23).children << Tag.find(30)
Tag.find(23).children << Tag.find(31)
# Dark_4
Tag.find(21).children << Tag.find(24)
Tag.find(21).children << Tag.find(25)
# Crisp_2
Tag.find(25).children << Tag.find(32)
Tag.find(25).children << Tag.find(33)
# Fruity_2
Tag.find(32).children << Tag.find(34)
Tag.find(32).children << Tag.find(35)
# Gentle
Tag.find(36).children << Tag.find(14)
Tag.find(36).children << Tag.find(15)

50.times do
  Drink.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)
end

250.times do
  DrinksTag.create(drink_id: rand(1..50),tag_id: rand(1..36))
end
