def test(arr)
  yield(arr)
end

raven, finch, *raptors = %w(raven finch hawk eagle)
p raven # => 'raven'
p finch # => 'finch'
p raptors  # => ['hawk','eagle']

test(%w(raven finch hawk eagle)) do |arr|
  p arr[2..-1]
end