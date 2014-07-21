namespace :cron do

  desc "Gets data from Google Travel API and stores it into the database, then sends a message to the user if the conditions are met"
  task :all => :environment do

    require 'net/http'
    require 'json'
    require 'rest_client'
    require 'open-uri'

    require 'dotenv'
    Dotenv.load


    trips = Flight.all
    trips.each do |trip|
      p "in the trips loop"
      template = generate_request_template(trip)
      find_flights(template).each do |flight|
        p "in the flights loop"
        flight.each do |key, value|
          p "in the key value loop"
          if key <= trip.price
            p "in the first if statement"
            if trip.user.nil?
            p "in the second if statement"
            NotificationsController.new.send_sms('Hey, a flight from' + trip.beginning_airport + 'to' + trip.ending_airport + 'is available now, for the price of' + key.to_s + 'with the airline' + value, trip.phone_number)
            else
            NotificationsController.new.send_sms('Hey, a flight from' + trip.beginning_airport + 'to' + trip.ending_airport + 'is available now, for the price of' + key.to_s + 'with the airline' + value, user.phone_number)
            end
          end
        end
      end
    end

  end

   def find_flights(template)
      flights = []
      uri = 'https://www.googleapis.com/qpxExpress/v1/trips/search?'+ ENV['API_KEY']
      response = JSON.parse(RestClient.post uri, template, :content_type => :json, :accept => :json )
      response["trips"]["tripOption"].each do |option|
        flights << { option["pricing"][0]["saleTotal"][3..-1].to_f => option["slice"][0]["segment"][0]["flight"]["carrier"] }
      end
      return flights
   end

   def generate_request_template(trip)
    template = {"request" => {"passengers" => {"adultCount" => 1}, "slice" => [{"origin" => "LAX", "destination" => "PDX", "date" => "2014-10-14"}, {"origin" => "PDX", "destination" => "LAX", "date" => "2014-11-14"}]}}
    template["request"]["slice"][0]["origin"] = trip.beginning_airport
    template["request"]["slice"][0]["destination"] = trip.ending_airport
    template["request"]["slice"][0]["date"] = (Time.now + 60*60*24).to_s[0..9]
    template["request"]["slice"][1]["origin"] = trip.ending_airport
    template["request"]["slice"][1]["destination"] = trip.beginning_airport
    template["request"]["slice"][1]["date"] = (Time.now + 60*60*24*3).to_s[0..9]
    return template.to_json
  end

end