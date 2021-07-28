require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_loan_or_duration?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def valid_apr?(num)
  (num.to_f.to_s == num || num.to_i.to_s == num) && (0..100).include?(num.to_i)
end

prompt(MESSAGES['welcome'])

loop do
  loan_amount = ''
  apr = ''
  duration = ''

  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount = gets.chomp
    if valid_loan_or_duration?(loan_amount)
      break
    else
      prompt(MESSAGES['invalid_loan'])
    end
  end

  loop do
    prompt(MESSAGES['apr'])
    apr = gets.chomp
    if valid_apr?(apr)
      break
    else
      prompt(MESSAGES['invalid_apr'])
    end
  end

  loop do
    prompt(MESSAGES['duration'])
    duration = gets.chomp
    if valid_loan_or_duration?(duration)
      break
    else
      prompt(MESSAGES['invalid_duration'])
    end
  end

  apr_decimal = apr.to_f / 100
  monthly_interest = apr_decimal / 12
  duration_month = duration.to_i * 12

  monthly_pay = loan_amount.to_f *
                (monthly_interest /
                (1 - (1 + monthly_interest)**(-duration_month)))

  prompt("Your monthly payment is $#{monthly_pay}")

  prompt(MESSAGES['another_calc'])
  input = gets.chomp.downcase
  break unless input == 'y'
end
