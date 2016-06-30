class String
  def coin_slide()
    coin_array = []
    n = self.gsub(/\./, "").to_i
    coin_array.push(n/25)
    n = n%25
    coin_array.push(n/10)
    n = n%10
    coin_array.push(n/5)
    n = n%5
    coin_array.push(n)
    coin_array
  end
end
