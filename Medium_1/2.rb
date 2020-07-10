class TextAnalyzer
  def process(unit)
    puts "#{yield} #{unit}"
  end
end

file = File.new('test.txt')
str = IO.read(file)
analyzer = TextAnalyzer.new
analyzer.process('paragraphs') { str.split("\n\n").size }
analyzer.process('lines') { str.split("\n").size }
analyzer.process('words') { str.split(' ').size }