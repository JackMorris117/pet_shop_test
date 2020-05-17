def pet_shop_name(pet_shop)
     pet_shop[:name]
end
# -------------------------------------

def total_cash(pet_shop_stock)
     pet_shop_stock[:admin][:total_cash]
end
# -------------------------------------
def add_or_remove_cash(pet_shop_stock, cash)
    pet_shop_stock[:admin][:total_cash] += cash
end
# -------------------------------------
def pets_sold(pet_shop_stock)
    pet_shop_stock[:admin][:pets_sold]
end
# -------------------------------------
def increase_pets_sold(pet_shop_stock, sold)
    pet_shop_stock[:admin][:pets_sold] += sold
end
# -------------------------------------
def stock_count(count)
    count[:pets].count
end
# -------------------------------------
def pets_by_breed(pet_shop_stock, breed)
    all_breeds = []
    for pet in pet_shop_stock[:pets]
        if pet[:breed] == (breed)
            all_breeds.push(breed)
        end
    end
    return all_breeds
end
# -------------------------------------
def find_pet_by_name(pet_shop_stock, pet_name)
    for pet in pet_shop_stock[:pets]
        
        if pet[:name] == (pet_name)
            break
        else
            pet = nil  
        end
    end
    return pet
end
# -------------------------------------
def remove_pet_by_name(pet_shop_stock, remove_pet_name)
    for pet in pet_shop_stock[:pets]
        if pet[:name] == (remove_pet_name)
           pet[:name] = nil
        end
    end
end
# -------------------------------------
def add_pet_to_stock(pet_shop_stock, new_pet)
    pet_shop_stock[:pets].push(new_pet)
end
# -------------------------------------
def customer_cash(customer)
    return customer[:cash]
end
# -----------------------------------
def remove_customer_cash(customer, amount_to_remove)
    customer[:cash] -= amount_to_remove
end 
# -----------------------------------
def customer_pet_count(customer)
    return customer[:pets].count
end
# -----------------------------------
def add_pet_to_customer(customer, add)
    customer[:pets] << add
end
# -----------------------------------
def customer_can_afford_pet(customer, new_pet)
    customer[:cash] >= new_pet[:price]  
end
# -----------------------------------
