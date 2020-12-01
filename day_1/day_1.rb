abort "Combo size required as arg" if ARGV[0].nil?
combo_size = ARGV[0].to_i
input = File.readlines('./input.txt').map(&:to_i)
input.combination(combo_size).each do |combo|
  puts combo.reduce(:*) and break if combo.reduce(:+) == 2020
end