FactoryGirl.define do
  factory :flight do
    user_id 1
    beginning_airport "JFK"
    ending_airport "LAX"
    search_end Time.now
    price 1_000_000
  end
end