class Numeric
  @@currencies = {'dollar' => 1.00, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  
  def in(to_currency)
    singular_currency = to_currency.to_s.gsub( /s$/, '')#strip trailing s
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    else
      super
    end
  end
end

class String
  def palindrome?
    _str = self.downcase.gsub(/[^0-9a-z]/i, '')
    if _str == _str.reverse
      return true
    else
      return false
    end
  end
end

module Enumerable
  def palindrome?
    if self.methods.include?(:reverse)
      self == self.reverse
    else
      false
    end
  end
end
