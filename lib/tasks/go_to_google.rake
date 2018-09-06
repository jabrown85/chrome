namespace :go_to_google do
  desc "Go to google"
  task :execute => :environment do

    Rails.application.eager_load!

    Spider.new().delay.go_to_google

  end
end