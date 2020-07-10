# Proc

# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc # #<Proc:0x000055b05a68fb18@(repl):1>
# puts my_proc.class # Proc
# my_proc.call # This is a .
# my_proc.call('cat') #  This is a cat.
# arity for proc is such that when a block parameter isn't passed into call, nil is used instead
# Proc.new doesn't work without a block unless it is used in a method and a block is pass into said method to be used with Proc.new (https://ruby-doc.org/core-2.4.1/Proc.html#method-c-new)

# Lambda
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda # #<Proc:0x000055cdf3b37010@(repl):11 (lambda)>
puts my_second_lambda # #<Proc:0x000055cdf3b36fe8@(repl):12 (lambda)>
puts my_lambda.class # Proc
my_lambda.call('dog') # This is a dog.
#my_lambda.call # wrong number of arguments (given 0, expected 1)
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." } # uninitialized constant Lambda
# There is no dedicated Lambda class. A lambda is just a special Proc object. If you take a look at the instance methods from Proc, you will notice there is a lambda? method.
# https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/

# lambda is a kernel instance method that is equivilant to Proc.new
# difference from normal Proc is that argument checking is done
# https://ruby-doc.org/core-2.4.1/Kernel.html#method-i-lambda
# note there is also a kernel method proc which is equivialnt to Proc.new
# https://ruby-doc.org/core-2.4.1/Kernel.html#method-i-proc

def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."} # This is a .
# 'seal' is passed into block_method_1 but is then never passed into the block using yield; thus the seal block variable returns nil
block_method_1('seal') # no block given (yield)

def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."} 
# This is a turtle.
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
# This is a turtle and a .
# seal block variable isn't passed into yield (only 1 passed in rather than 2) thus it returns nil in string
block_method_2('turtle') { puts "This is a #{animal}."}
# undefined local variable or method `animal' for main:Object
# animal block variable isn't definied as a block variable thus when it is called, it returns an error