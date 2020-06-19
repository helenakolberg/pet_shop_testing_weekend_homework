def pet_shop_name(pet_shop)
    return @pet_shop[:name]
end

def total_cash(pet_shop)
    return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, money)
    return @pet_shop[:admin][:total_cash] += money
end

def pets_sold(pet_shop)
    return @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
    return @pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
    return @pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
    breed_total = []
        for pet in pet_shop[:pets]
            if (pet[:breed] == breed)
                breed_total << pet[:breed]
            end
        end
    return breed_total
end

def find_pet_by_name(pet_shop, name)
    for pet in pet_shop[:pets]
        if (pet[:name] == name)
            return pet
        end
    end
    return nil
end

def remove_pet_by_name(pet_shop, name)
    for pet in pet_shop[:pets]
        if (pet[:name] == name)
            return pet_shop[:pets].delete(pet)
        end
    end
end

def add_pet_to_stock(pet_shop, new_pet)
    pet_shop[:pets] << new_pet
    return pet_shop[:pets].length
end

def customer_cash(customer)
    return customer[:cash]
end

def remove_customer_cash(customer, cash)
    return customer[:cash] -= cash
end

def customer_pet_count(customer)
    return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
    customer[:pets] << new_pet
    return customer[:pets].length
end

def customer_can_afford_pet(customer, new_pet)
    if customer[:cash] >= new_pet[:price]
        return true
    end
end