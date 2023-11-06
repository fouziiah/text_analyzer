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

#1. Implement a function that counts the number of words in the document.
    def wordCount(text)
        text.split(/\s+/).count
    end

#2. Implement a function that counts the number of characters in the document.
    def charCount(text)
        text.delete(' ').length
    end

#3. Implement a function that counts the number of paragraphs in the document (paragraphs are separated by empty lines).
    def paragraphCount(text)
        text.split(/\n\n+/).count
#4. Identify the most common word in the document and display it along with its frequency.
        
    
# Analyze the sample text
    filename = 'sample.txt' # Replace with your text file
    text = read_text_from_file(filename)

# use `text` ^ to pass as a parameters to your methods

# puts statements to console go here:
    puts "Number of words in the document: #{wordCount(text)}"
    puts "Number of characters in the document: #{charCount(text)}"
    puts "Number of paragraphs in the document: #{paragraphCount(text)}"