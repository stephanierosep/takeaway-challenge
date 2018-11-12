
class Takeaway

  def initialize(menu = Menu.new)
    @item = []
    @total = []
  end


  def order_items
    p "What would you like to order?"
    p "To finish ordering please type end"
    input = ""
    while input = gets.chomp
      @item << input
      break if input == "end"
    end
    p @item.reverse.drop(1)
  end

  def order_total

    @item.reverse.drop(1).each do |item|

      @total << 5  if item == "burger"

      @total << 10 if item == "pizza"

      @total << 2 if item == "fries"

      @total << 3 if item == "salad"
    end

    sum = 0
    @total.each do |i| (sum += i)
    end
    p "Your order total is #{sum} pounds"
  end
end
