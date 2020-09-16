require 'pry'
class CashRegister 
    attr_accessor :total, :discount, :items, :last_transaction
    
    def initialize (discount = 0)
        @total = 0 
        @discount = discount
        @items = []
    end 

    def add_item (title, price, quantity = 1)
        if quantity > 1
            @total += price * quantity
          
        else 
            @total += price 
        end 
        quantity.times do 
            @items << title 
        end 
        @last_transaction = @total 
    end 

    def apply_discount 
        if discount > 0 
        @total = @total - @total * discount/100 
         return "After the discount, the total comes to $#{@total}."
        else 
        return "There is no discount to apply."
        end 
    end 
     
    def void_last_transaction 
        @total -= @last_transaction
    end 
end 
