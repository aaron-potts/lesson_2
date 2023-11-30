=begin
    Get inputs asking for:
    - loan amount
    - APR
    - loan duration

    Calculate:
    - Monthly interest rate
    - loan duration in months
    - monthly payment

    formula - m = P * (j / ( 1 - (1 + J)**(-n)))
    Monthly payment = (loan amount) × (interest rate / 12) / (1 − (1 + (interest rate / 12)) ^ (-loan term))

    m = monthly payment
    p = loan amount
    j = monthly interest rate
    n = loan duration in months

    after completing program:
    run rubocop

    Things to note:
    What format should the inputs be in
    If APR, convert to monthly
    Clearly define the duration
=end

puts 'What is the loan amount?'
loan_amount = gets.chomp.to_f
puts "Length of loan?"
duration = gets.chomp.to_f
puts "Interest?"
interest = (gets.chomp.to_f/100)
# When relevant, it is expressed monthly, not yearly
monthly_payment = (loan_amount * ((interest/12) / (1 - (1 + (interest/12))**(-duration)))).round(2)

puts monthly_payment