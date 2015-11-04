
lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
total_characters = text.length
excluding_whitespace = text.gsub(/\s+/, '').length
word_count = text.split.length

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{excluding_whitespace} (excluding spaces)"
puts "#{word_count} words"