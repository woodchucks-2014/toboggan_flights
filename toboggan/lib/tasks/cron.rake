namespace :cron do

  desc "Gets data from Google Travel API and stores it into the database, then sends a message to the user if the conditions are met"
  task :all => :environment do


    flights=Data from API

    Flight.all.each do |flight|
      flights.each do |user|
        if flight.price=<user.flights.price
          NotificationsController.new.send_sms('Hey, a flight from' + flight.start + 'to' + flight.end + 'is available now, for the price of' + flight.price + 'with the airline' + flight.airline,  user.phone_number)
        end

      end
    end

   end
end
