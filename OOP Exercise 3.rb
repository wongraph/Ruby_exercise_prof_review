class Cart 

attr_accessor :items 

def initialize
	@items = [] 
end

def add_item(foo)    #parameter should be object 
	@items << foo       
end

def checkout
	@items.each do |item|
		puts "item is a #{item.source} #{item.type} which comes out to be #{item.price} plus #{item.tax}" 
	end
end

end         #end of Cart class 																																		


class Item 

attr_accessor :type, :source, :price, :tax																																							
																																																										
def initialize(type, source, price)
	@type = type.to_s
	@source = source.to_s 
	@price = price.to_i
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
# puts music_cd.receipt

cart_1.add_item(book_1)
cart_1.add_item(cd_1)

cart_1.checkout

# chocolate_bar = Item.new("food", "domestic", 0.85)
# chocolate_bar.calc_tax
# puts chocolate_bar.receipt

