namespace :cron do

  desc "Gets data from Google Travel API and stores it into the database, then sends a message to the user if the conditions are met"
  task :all => :environment do

    puts "Hey dude waiting for the data"

  #   flights=Data from API

  #   flights.each do |flight|
  #     User.all.each do |user|
  #       if flight.price=<user.flights.price
  #         NotificationsController.new.send_sms('Hey, a flight from' + flight.start + 'to' + flight.end + 'is available now, for the price of' + flight.price + 'with the airline' + flight.airline,  user.phone_number)
  #       end

  #     end
  #   end

   end
end
