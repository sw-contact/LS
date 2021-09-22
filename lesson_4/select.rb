produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


def select_fruit(produce)
  product = produce.keys
  counter = 0
  fruits = {}

  loop do
    break if counter == product.size

    current_key = product[counter]
    current_value = produce[current_key]

    if current_value == "Fruit"
      fruits[current_key] = current_value
    end

    counter += 1
  end

fruits
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
