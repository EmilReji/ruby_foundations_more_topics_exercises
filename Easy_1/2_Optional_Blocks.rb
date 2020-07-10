# def compute
#   if block_given?
#     val = yield
#   else
#     val = 'Does not compute.'
#   end
#   val
# end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

# Further Exploration
def compute(arg)
  if block_given?
    val = yield(arg)
  else
    val = 'Does not compute.'
  end
  val
end

p compute(1) { |x| 5 + 3 + x } == 9
p compute('c')  { |x| 'a' + 'b' + x } == 'abc'
p compute(1)  == 'Does not compute.'