# Enumerable
# Raphael Adams

class WordSplitter
    attr_accessor :string

    def each
        string.split(" ").each { |word| yield word }
    end
end

splitter = WordSplitter.new
splitter.string = "one two three four"

splitter.each { |word| puts word }