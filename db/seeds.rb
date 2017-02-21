File.open('1_libros.csv').each do |line|
  new_line = line.strip.split(",")
  question = Question.create(deck: 1, question: new_line[0], answer: new_line[1], op_a: new_line[2], op_b: new_line[3], op_c: new_line[4])
end

File.open('2_peliculas.csv').each do |line|
  new_line = line.strip.split(",")
  question = Question.create(deck: 2, question: new_line[0], answer: new_line[1], op_a: new_line[2], op_b: new_line[3], op_c: new_line[4])
end

File.open('3_personajes.csv').each do |line|
  new_line = line.strip.split(",")
  question = Question.create(deck: 3, question: new_line[0], answer: new_line[1], op_a: new_line[2], op_b: new_line[3], op_c: new_line[4])
end

Deck.transaction do
  deck = Deck.create!(category:"1:books")
  deck = Deck.create!(category:"2:movies")
  deck = Deck.create!(category:"3:creatures")
end