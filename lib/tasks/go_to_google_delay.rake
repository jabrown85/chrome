namespace :go_to_google_delay do
  desc "Go to google with background job"
  task :execute => :environment do

    Rails.application.eager_load!

    Spider.new().delay.go_to_google

  end
end