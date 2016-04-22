require 'digest'

puts "Какую фразу зашифровать?"
phrase = STDIN.gets.chomp

puts "Какой способ шифрования (1–MD5, 2–SHA1)?"
choice = STDIN.gets.chomp.to_i

until choice == 1 || choice == 2
  puts "неправильный ввод, повторите"
  choice = STDIN.gets.chomp.to_i
end

if choice == 1
  puts Digest::MD5.hexdigest(phrase)
else
  puts Digest::SHA1.hexdigest(phrase)
end