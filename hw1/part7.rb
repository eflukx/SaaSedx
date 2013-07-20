class CartesianProduct
  include Enumerable
end

  def test(a, b)
    retval = []
    a.each{|aa|
      b.each{|bb| retval << [aa,bb]}
    }
    retval
  end
  
  def test2(a, b)
    a.each.collect{|aa| [aa,b.each.collect{|bb| bb}]}
  end



a = [:a,:b,:c]
b = [1,2,3]

puts a.product(b).inspect

puts test2(a,b).inspect