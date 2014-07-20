namespace :cron do


  desc "Gets data from Google Travel API and stores it into the database"
  task :data => :environment do
    puts "get data"
  end

  desc "Sends a message to the user when conditions are met"
  task :phone => :environment do
    puts "send message"
  end

  desc "Does both of the above tasks"
  task :all => [:data, :phone]

end
