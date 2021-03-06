require 'date'

# A hash of all house prices and transactions
# Data from the Land Registry and transformed through Postcodes.io

@hash = {["Basingstoke and Deane", "Tadley South"]=>
  {:count=>1,
   :average=>94000,
   :transactions=>
    [[94000,
      "RG26 3UR",
      Date.parse("1995-09-01")]]},
 ["Camden", "Cantelowes"]=>
  {:count=>1,
   :average=>215000,
   :transactions=>
    [[215000,
      "NW1 9UB",
      Date.parse("1995-03-10")]]},
 ["Conwy", "Capelulo"]=>
  {:count=>1,
   :average=>40000,
   :transactions=>
    [[40000,
      "LL34 6RW",
      Date.parse("1995-03-24")]]},
 ["Luton", "Leagrave"]=>
  {:count=>1,
   :average=>30500,
   :transactions=>
    [[30500, "LU4 9JG", Date.parse("1995-11-30")]]},
 ["Melton", "Asfordby"]=>
  {:count=>1,
   :average=>37500,
   :transactions=>
    [[37500,
      "LE14 3YP",
      Date.parse("1995-08-31")]]},
 ["Sheffield", "Beighton"]=>
  {:count=>1,
   :average=>41950,
   :transactions=>
    [[41950, "S20 2QW", Date.parse("1995-06-30")]]},
 ["Stratford-on-Avon", "Wellesbourne East"]=>
  {:count=>1,
   :average=>70500,
   :transactions=>
    [[70500,
      "CV35 9RZ",
      Date.parse("1995-03-24")]]},
 ["Sunderland", "Millfield"]=>
  {:count=>1,
   :average=>26000,
   :transactions=>
    [[26000, "SR4 7DY", Date.parse("1995-12-18")]]},
 ["Taunton Deane", "Bishop's Lydeard"]=>
  {:count=>1,
   :average=>51500,
   :transactions=>
    [[51500, "TA4 3NJ", Date.parse("1995-02-24")]]},
 ["Test Valley", "St Mary's"]=>
  {:count=>1,
   :average=>60000,
   :transactions=>
    [[60000,
      "SP10 1JG",
      Date.parse("1995-06-23")]]}}



      # "A house was sold in [district], [ward] for [price] on [date]"
      # "A house was sold in [district2], [ward2] for [price2] on [date2]"
      # ...
      # ...
      # ... All the other transactions in the hash


      # hash.each do |k,v|
      #   transactions = [v[:transactions]]
      #   price = 0
      #   transactions.each do |x|
      #     price = x[0][0].inspect
      #   end
      #   date = ""
      #   transactions.each do |x|
      #     date = x[0][2]
      #   end
      #   district = k.join(", ")
      #   puts("A house was sold in #{district} for #{price} on #{date}")
      # end
 ################################################


      def search(search)
        @hash.each do |k,v|
          transactions = [v[:transactions]]
          price = 0
          transactions.each do |x|
            price = x[0][0].inspect
          end
          date = ""
          transactions.each do |x|
            date = x[0][2]
          end
          district = k.join(", ")

          if district.include? search.downcase.capitalize || search.to_s == price || search.to_s == date
            puts("A house was sold in #{district} for #{price} on #{date}")
          end
        end
      end
      puts "Please enter district, ward or, price:"
      answer = gets.chomp
      search(answer)
