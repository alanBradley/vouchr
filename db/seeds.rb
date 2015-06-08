# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# for category go find where there is a name of dining and if it is not there then create it but if it is there then do not create it. 
dining_category = Category.where(name: 'dining').first_or_create(name: 'dining')
entertainment_category = Category.where(name: 'entertainment').first_or_create(name: 'entertainment')
retail_category = Category.where(name: 'retail').first_or_create(name: 'retail')
activity_category = Category.where(name: 'activity').first_or_create(name: 'activity')
travel_category = Category.where(name: 'travel').first_or_create(name: 'travel')
misc_category = Category.where(name: 'misc').first_or_create(name: 'misc')

# looks for an activity subcategory and if it doesnt find it then it then creates it and if it does find it then dont create it.
Subcategory.where(name: 'restaurant', category_id: dining_category.id).first_or_create(name: 'restaurant', category_id: dining_category.id)
Subcategory.where(name: 'food', category_id: dining_category.id).first_or_create(name: 'food', category_id: dining_category.id)
Subcategory.where(name: 'drink', category_id: dining_category.id).first_or_create(name: 'drink', category_id: dining_category.id)

Subcategory.where(name: 'cinema', category_id: entertainment_category.id).first_or_create(name: 'cinema', category_id: entertainment_category.id)
Subcategory.where(name: 'gig', category_id: entertainment_category.id).first_or_create(name: 'gig', category_id: entertainment_category.id)
Subcategory.where(name: 'theatre', category_id: entertainment_category.id).first_or_create(name: 'theatre', category_id: entertainment_category.id)