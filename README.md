class Cart 

attr_accessor :items 

def initialize
	@items = [] 
end

def add_item(foo) 
	@items << foo
end

def checkout
	@items.each do |item|
		puts "#{item} is a #{@type} and #{@source} which comes out to #{@price} plus #{@tax}" 
	end
end

end         #end of Cart class

class Item 

attr_accessor :type, :source, :price

def initialize(type, source, price)
	@type = type.to_s
	@source = source.to_s 
	@price = price
end

def calc_tax 
	if @type == "book" or @type == "food" or @type == "medical" and @source == "domestic"
		@tax = @price * 0 
	elsif @type == "book" or @type == "food" or @type == "medical" and @source == "import"
		@tax = @price * 0.05
	elsif @type != "book" or @type != "food" or @type != "medical" and @source == "domestic"
		@tax = @price * 0.10
	elsif @type != "book" or @type != "food" or @type != "medical" and @source == "import"
		@tax = @price *0.15 
	end
end

def receipt 
	return "Your total for this item is $#{@price + @tax}"
end

end  		#end of Item class 


cart_1 = Cart.new

book_1 = Item.new("book", "domestic", 12.49)
book_1.calc_tax

cd_1 = Item.new("music", "domestic", 14.99)
cd_1.calc_tax


cart_1.add_item(book_1)
cart_1.add_item(cd_1)

cart_1.checkout




