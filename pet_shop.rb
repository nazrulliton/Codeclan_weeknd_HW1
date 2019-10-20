def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash (pet_shop,x)
  return pet_shop[:admin][:total_cash] += x
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  return pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
return pet_shop[:pets].length
end

def pets_by_breed(shop,breed)
  total_num = []
  shop[:pets].each{|x| total_num.push(x[:breed]) if x[:breed] == breed}
return total_num
end

def add_pet_to_stock(pet_shop,name)
pet_shop[:pets].push(name)
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  pet_shop[:pets].each{|x| pet_shop[:pets].delete(x) if x[:name] == name}
end



def customer_cash(customers)
  return customers[:cash]
end


def remove_customer_cash(customers,x)
  return customers[:cash] -= x
end


def customer_pet_count(customers)
  return customers[:pets].count
end

def add_pet_to_customer(customer, name)
  customer[:pets].push(name)
end
