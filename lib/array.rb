class Array

  def inject_new(sum = self.first)
    if sum == self.first
      self[1..-1].each do |element|
        sum = yield(sum, element)
      end
    else
      self[0..-1].each do |element|
        sum = yield(sum, element)
      end
    end
    sum
  end

end