# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc # #<Proc:0x00000001b976d8@2.rb:2>
puts my_proc.class # Proc
my_proc.call # This is a .
my_proc.call('cat') # This is a cat.

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda # #<Proc:0x00000001b965f8@2.rb:9 (lambda)>
puts my_second_lambda # #<Proc:0x00000001b964b8@2.rb:10 (lambda)>
puts my_lambda.class # Proc
my_lambda.call('dog') # This is a dog.
my_lambda.call # 2.rb:9:in `block in <main>': wrong number of arguments (given 0, expected 1) (ArgumentError) from 2.rb:15:in `<main>'
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}