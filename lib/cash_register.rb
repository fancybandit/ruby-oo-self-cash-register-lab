
class CashRegister

    attr_accessor :total, :items, :discount, :last_transaction

    def initialize(discount = 0)
        self.total = 0
        self.items = []
        self.discount = discount
    end

    def add_item(title, price, quantity = 1)
        quantity.times {self.items << title}
        self.total += price * quantity
        self.last_transaction = price * quantity
    end

    def apply_discount
        if self.discount > 0
            percent_discount = self.discount.to_f / 100
            savings = self.total.to_f * percent_discount
            new_price = self.total -= savings.to_i
            "After the discount, the total comes to $#{new_price}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= last_transaction
    end

end

