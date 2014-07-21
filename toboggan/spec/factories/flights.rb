FactoryGirl.define do
  factory :flight do
    user_id 1
    beginning_airport "JFK"
    ending_airport "LAX"
    search_end Time.now
    phone_number "917-957-7347"
    duration 3
    price 1000000
  end
end