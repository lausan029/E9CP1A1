class Product
	attr_accessor :name, :talla
  def initialize(name, *talla)
    @name = name
    @talla = talla.map(&:to_i)
  end

  def promedio
  	p "El promedio es #{@talla.inject(0) {|sum,talla| sum + talla} / @talla.size}"
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list[0].promedio