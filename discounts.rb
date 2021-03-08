#!/bin/ruby

require 'json'
require 'stringio'

# Complete the 'findLowestPrice' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. 2D_STRING_ARRAY products
#  2. 2D_STRING_ARRAY discounts
#

def findLowestPrice(products, discounts)
  cost = 0
  dis_hash = discount_hash(discounts)
  products.each do |p|
      max = 0
      for i in 1..(p.length-1)
        next if p[i] == 'EMPTY'
        discount = calculate_discounted_price(p[0].to_f, dis_hash[p[i]])

        if(discount > max)
          max = discount
        end
      end
      cost += (p[0].to_f - max)
  end
  cost
end

def discount_hash(discounts)
  discounts.each_with_object({}) do |discount, discounts_hash|
    discount_name, discount_type, discount_value  = discount
    discounts_hash[discount_name] = {'p': discount_value.to_f/100} if discount_type == '1'
    discounts_hash[discount_name] = {'1': discount_value.to_f} if discount_type == '2'
    discounts_hash[discount_name] = {'p': 0} unless ['1', '2'].include?(discount_type)
  end
end

def calculate_discounted_price(price, discount)
  key = discount&.keys[0]&.to_s
  value = discount&.values[0]

  if(key == '1')
    return price - value
  elsif(key == 'p')
    return price * value
  end
end

products = [['10', 'sale', 'january-sale'], ['200', 'sale', 'EMPTY'], ['200', 'another-sale']]
discounts = [['sale', '0', '10'], ['january-sale', '1', '10'], ['another-sale', '2', '50']]

puts discount_hash(discounts)
puts findLowestPrice(products, discounts)
