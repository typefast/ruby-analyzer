
lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join
total_characters = text.length
excluding_whitespace = text.gsub(/\s+/, '').length
word_count = text.split.length
sentance_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length
stopwords = %w{the a by on for of are with just but and to the my I has some in}

all_words = text.scan(/\w+/)
good_words = all_words.select{ |word| !stopwords.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{excluding_whitespace} (excluding spaces)"

puts "#{word_count} words"
puts "#{sentance_count} sentances"
puts "#{paragraph_count} paragraphs"

puts "#{sentance_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentance_count} words per sentence (average)"

puts "#{good_percentage}% of words are non-fluff words"
puts "Summary:\n\n" + ideal_sentences.join(". ")

