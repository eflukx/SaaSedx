class CartesianProduct
  include Enumerable
  def initialize(a,b)
    @a = a
    @b = b
  end
  def each
    @a.each do |aa|
      @b.each do |bb|
        yield [aa,bb]
      end
    end
  end
end

def test(a, b)
  retval = []
  a.each{|aa|
    b.each{|bb| retval << [aa,bb]}
  }
  retval
end

def trivial(a,b)
  a.product(b)
end
  
#Testspullen
a = [:a,:b,:c]
b = [1,2,3]

my_cp = CartesianProduct.new(a,b)
my_cp.each{|itr| puts itr.inspect}
