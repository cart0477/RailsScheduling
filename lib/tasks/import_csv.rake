require 'csv'

namespace :import_orders_csv do
    task :create_orders => :environment do
        csv_text = File.read('.../SP/csv/ord.csv')
        csv = CSV.parse(csv_text, :headers => true)
        csv.each do |row|
            Order.create!(row.to_hash)
        end
    end
end

namespace :import_locations_csv do
    task :create_locations => :environment do
        csv_text = File.read('.../SP/csv/loc.csv')
        csv = CSV.parse(csv_text, :headers => true)
        csv.each do |row|
            Location.create!(row.to_hash)
        end
    end
end

namespace :import_technicians_csv do
    task :create_technicians => :environment do
        csv_text = File.read('.../SP/csv/tech.csv')
        csv = CSV.parse(csv_text, :headers => true)
        csv.each do |row|
            Technician.create!(row.to_hash)
        end
    end
end

namespace :import_all_csv do
    task :import_all => :environment do
        csv_text = File.read('.../SP/csv/tech.csv')
        csv = CSV.parse(csv_text, :headers => true)
        csv.each do |row|
            Technician.create!(row.to_hash)
        end
        csv_text = File.read('.../SP/csv/loc.csv')
        csv = CSV.parse(csv_text, :headers => true)
        csv.each do |row|
            Order.create!(row.to_hash)
        end
        csv_text = File.read('.../SP/csv/ord.csv')
        csv = CSV.parse(csv_text, :headers => true)
        csv.each do |row|
            Order.create!(row.to_hash)
        end
    end
end
