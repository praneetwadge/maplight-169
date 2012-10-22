# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

contributions = [{:date => Date.new(2010, 11, 4), :donor => "Jeanne Buell", :amount => 10000, :city => "San Francisco", :state => "CA", :recipient => "Nancy Pelosi"},
								{:date => Date.new(2010, 10, 31), :donor => "Jeanne Buell", :amount => 2000, :city => "San Francisco", :state => "CA", :recipient => "Nancy Pelosi"},
								{:date => Date.new(2010, 4, 4), :donor => "J A Buell", :amount => 100, :city => "San Francisco", :state => "CA", :recipient => "Nancy Pelosi"},
								{:date => Date.new(2009, 2, 28), :donor => "Jeanne Buell", :amount => 200, :city => "San Francisco", :state => "CA", :recipient => "Nancy Pelosi"},
								{:date => Date.new(2009, 1, 15), :donor => "Jeanne Buell", :amount => 10000, :city => "San Francisco", :state => "CA", :recipient => "Nancy Pelosi"},
								{:date => Date.new(2012, 10, 12), :donor => "Ayushi Samaddar", :amount => 100, :city => "Berkeley", :state => "CA", :recipient => "Ronald Reagan"},
								{:date => Date.new(2012, 10, 12), :donor => "Praneet Wagde", :amount => 100, :city => "Berkeley", :state => "CA", :recipient => "John Snow"},
								{:date => Date.new(2012, 10, 13), :donor => "Praneet Wagde", :amount => 200, :city => "Berkeley", :state => "CA", :recipient => "Jane Smith"},
								{:date => Date.new(2012, 10, 14), :donor => "Praneet Wagde", :amount => 200, :city => "Berkeley", :state => "CA", :recipient => "Jane Smith"},
								{:date => Date.new(2012, 10, 12), :donor => "Praneet W", :amount => 300, :city => "Berkeley", :state => "CA", :recipient => "Jane Smith"},
								{:date => Date.new(2012, 10, 12), :donor => "P Wagde", :amount => 150, :city => "Berkeley", :state => "CA", :recipient => "Jane Smith"},]

contributions.each do |contribution|
	Contribution.create!(contribution)
end

