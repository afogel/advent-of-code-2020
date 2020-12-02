input = File.readlines('./input.txt')

data = input.map do |row|
  extracted_info = row.match(/(.*)-(.*)\s(\w): (.*)/).captures
  {
    min: extracted_info[0].to_i,
    max: extracted_info[1].to_i,
    required_character: extracted_info[2],
    password: extracted_info[3] 
  }
end

valid_entries = data.select do |info|
  required_character_count = info[:password].count(info[:required_character])
  required_character_count >= info[:min] && required_character_count <= info[:max]
end

p valid_entries.count

valid_entries = data.select do |info|
  info[:required_character]
  position_1 = info[:min] - 1
  position_2 = info[:max] - 1
  char_1 = info[:password][position_1]
  char_2 = info[:password][position_2]

  (char_1 == info[:required_character] || char_2 == info[:required_character]) && 
  (char_1 != char_2)
end

p valid_entries.count

