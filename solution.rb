# Read text from a file
def read_text_from_file(filename)
    File.read(filename)
end

=begin 
 try using Ruby methods
 it's similar to using a function in js
 look up function/method `read_text_from_file` as an example
 structure: 
 def method_name
    logic of method goes in here
 end

=end

# logic for text_analyzer requirments go here:

#2. Implement a function that counts the number of words in the document.
   def count_words(text)
    words = text.scan(/\b\w+\b/)
    words.length
   end

#3. Implement a function that counts the number of characters in the document.
    def char_count(text)
        text.length
    end

#4. Implement a function that counts the number of paragraphs in the document (paragraphs are separated by empty lines).
    def paragraph_count(text)
        paragraphs = text.split(\n\n)
    end

#5. Identify the most common word in the document and display it along with its frequency.
        def most_common_word(text)
            words = text.scan(/\b\w+\b/)

            word_frequency = Hash.new(0)

            words.each do |word|
                word_frequency[word.downcase] += 1
            end 
            most_common =word_frequency.max_by{|word, word_frequency| frequency}
            return most_common
            end
#6. Provide word frequency statistics, listing the top 10 most common words and their frequencies.
        def word_frequency_stats(text)
            words = text.scan(/\b\w+\b/)

            word_frequency = Hash.new(0)

            words.each do |word|
                word_frequency[word.downcase] += 1
            end 

            sorted_word_frequency = word_frequency.sort_by {|word, frequency| -frequencies}
            sorted_word_frequency[0...10]
            
# Analyze the sample text
    filename = 'sample.txt' # Replace with your text file
    text = read_text_from_file(filename)

# use `text` ^ to pass as a parameters to your methods
top_words = word_frequency_stats(text)
# puts statements to console go here:
    puts "Word Count: #{count_words(text)}"
    puts "Char Count: #{char_count(text)}"
    puts "paragraph Count: #{paragraph_count(text)}"
    puts "Most Common Word: #{most_common_wordt(text)[1]}"
    puts "Top 10 Most Common Words #{top_words}"

    top_words.each do |word, frequency|
        puts "#{word} - #{frequency} times"
    end
    
    if ARGV.length == 1
        filename = ARGV[0]
        puts filename
        puts ARGV
        analyze_text(filename)
    else
        puts "Usage: ruby file_name.rb <filename>"
    end