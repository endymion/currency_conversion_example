require 'money'
require 'money/bank/google_currency'

# (optional)
# set the seconds after than the current rates are automatically expired
# by default, they never expire
Money::Bank::GoogleCurrency.ttl_in_seconds = 86400

# set default bank to instance of GoogleCurrency
Money.default_bank = Money::Bank::GoogleCurrency.new

# create a new money object, and use the standard #exchange_to method
money = Money.new(10000_00, "IDR")
I18n.config.available_locales = :en
puts money.exchange_to(:USD).format
