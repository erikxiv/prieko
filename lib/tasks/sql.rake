namespace :sql do
  task :rmcat => :environment do
    Verification.update_all('category=null')
  end
  task :cleanup => :environment do
    Verification.delete_all('year is null')
  end
  task :rmposmat => :environment do
    Verification.delete_all("amount > 0 and category='Mat'")
  end
end