
lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join
total_characters = text.length
excluding_whitespace = text.gsub(/\s+/, '').length
word_count = text.split.length
sentance_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{excluding_whitespace} (excluding spaces)"
puts "#{word_count} words"
puts "#{sentance_count} sentances"
puts "#{paragraph_count} paragraphs"