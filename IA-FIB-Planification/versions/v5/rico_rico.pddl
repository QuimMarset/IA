(define (problem ricoRico) (:domain ricoRico)
  (:objects
    Mon Tue Wed Thu Fri DummyD - day
    Spaghetti_Bolognese Mediterranean_Salad Vegan_Sandwich Mushroom_risotto Guacamole_with_tomatoes Sushi American_burger Broccoli_quiche Kirmizi_Mercimek_Corbasi Chinese_Noodles_With_Vegetables Chana_masala Chinese_tiger_salad Shumai - mainCourse
    Roast_pork_with_prunes Spanish_omelette Paella Tuna_steak Chicken_parmesan Lamb_tagine Couscous_meatloaf Coq_au_vin Mapo_tofu Persian_pie Burrito_pie Spicy_seafood_stew - secondCourse
    Fish Meat Soup Salad Rice Pasta Vegetables DummyC - category
  )
  (:init
    (incompatible Spaghetti_Bolognese Paella)
    (incompatible Mediterranean_Salad Chicken_parmesan)
    (incompatible Kirmizi_Mercimek_Corbasi Chicken_parmesan)
    (incompatible Vegan_Sandwich Roast_pork_with_prunes)
    (incompatible Mushroom_risotto Couscous_meatloaf)
    (incompatible Guacamole_with_tomatoes Lamb_tagine)
    (incompatible Chinese_Noodles_With_Vegetables Spicy_seafood_stew)
    (incompatible Chinese_tiger_salad Burrito_pie)
    (incompatible Sushi Coq_au_vin)

    ; Main courses
    (classified Spaghetti_Bolognese Pasta)
    (classified Mediterranean_Salad Salad)
    (classified Vegan_Sandwich Vegetables)
    (classified Mushroom_risotto Rice)
    (classified Guacamole_with_tomatoes Vegetables)
    (classified Sushi Fish)
    (classified American_burger Meat)
    (classified Broccoli_quiche Vegetables)
    (classified Kirmizi_Mercimek_Corbasi Soup)
    (classified Chinese_Noodles_With_Vegetables Soup)
    (classified Chana_masala Soup)
    (classified Chinese_tiger_salad Fish)
    (classified Shumai Rice)
    ; Second courses
    (classified Roast_pork_with_prunes Meat)
    (classified Spanish_omelette Meat)
    (classified Paella Rice)
    (classified Tuna_steak Fish)
    (classified Chicken_parmesan Meat)
    (classified Lamb_tagine Meat)
    (classified Couscous_meatloaf Meat)
    (classified Coq_au_vin Meat)
    (classified Mapo_tofu Vegetables)
    (classified Persian_pie Pasta)
    (classified Burrito_pie Pasta)
    (classified Spicy_seafood_stew Fish)

    (dayBefore DummyD Mon)
    (dayBefore Mon Tue)
    (dayBefore Tue Wed)
    (dayBefore Wed Thu)
    (dayBefore Thu Fri)

    ; Dummy initializations
    (mainReady DummyD)
    (secondReady DummyD)
    (dayMCClassif DummyD DummyC)
    (daySCClassif DummyD DummyC)

    (servedOnly Paella Thu)
    (servedOnly Spanish_omelette Mon)
    (servedOnly Lamb_tagine Wed)
    (servedOnly Sushi Fri)

    (= (minCalories) 1000)
    (= (maxCalories) 1500)

    ; Main courses
    (= (calories Spaghetti_Bolognese) 500)
    (= (calories Mediterranean_Salad) 120)
    (= (calories Vegan_Sandwich) 290)
    (= (calories Mushroom_risotto) 490)
    (= (calories Guacamole_with_tomatoes) 610)
    (= (calories Sushi) 720)
    (= (calories American_burger) 1000)
    (= (calories Broccoli_quiche) 240)
    (= (calories Kirmizi_Mercimek_Corbasi) 600)
    (= (calories Chinese_Noodles_With_Vegetables) 760)
    (= (calories Chana_masala) 480)
    (= (calories Chinese_tiger_salad) 320)
    (= (calories Shumai) 410)
    ; Second Courses
    (= (calories Roast_pork_with_prunes) 810)
    (= (calories Spanish_omelette) 380)
    (= (calories Paella) 700)
    (= (calories Tuna_steak) 670)
    (= (calories Chicken_parmesan) 520)
    (= (calories Lamb_tagine) 490)
    (= (calories Couscous_meatloaf) 250)
    (= (calories Coq_au_vin) 960)
    (= (calories Mapo_tofu) 320)
    (= (calories Persian_pie) 480)
    (= (calories Burrito_pie) 430)
    (= (calories Spicy_seafood_stew) 750)

    (= (totalPrice) 0)

    ; Main courses
    (= (price Spaghetti_Bolognese) 8)
    (= (price Mediterranean_Salad) 7)
    (= (price Vegan_Sandwich) 5)
    (= (price Mushroom_risotto) 12)
    (= (price Guacamole_with_tomatoes) 10)
    (= (price Sushi) 15)
    (= (price American_burger) 5)
    (= (price Broccoli_quiche) 10)
    (= (price Kirmizi_Mercimek_Corbasi) 16)
    (= (price Chinese_Noodles_With_Vegetables) 9)
    (= (price Chana_masala) 11)
    (= (price Chinese_tiger_salad) 6)
    (= (price Shumai) 13)
    ; Second courses
    (= (price Roast_pork_with_prunes) 17)
    (= (price Spanish_omelette) 4)
    (= (price Paella) 25)
    (= (price Tuna_steak) 20)
    (= (price Chicken_parmesan) 14)
    (= (price Lamb_tagine) 19)
    (= (price Couscous_meatloaf) 9)
    (= (price Coq_au_vin) 21)
    (= (price Mapo_tofu) 12)
    (= (price Persian_pie) 6)
    (= (price Burrito_pie) 6)
    (= (price Spicy_seafood_stew) 13)
  )
  (:goal
    (forall (?d - day)
      (and (mainReady ?d) (secondReady ?d))
    )
  )
  (:metric minimize (totalPrice))
)