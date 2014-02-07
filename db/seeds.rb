# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(
  email: 'awesome_box@gmail.com', 
  encrypted_password: '$2a$10$zS31ZDAq2RKS.CrHABdOB.g.u9tbIjXUZIvL4fPrPqozfDKeyZseS'
)

User.create!(
  email: 'casual_box@gmail.com', 
  encrypted_password: '$2a$10$4NQalNcEEJNrzAmd0abizunjknYA2A8i64n.1DJSjUglWOYHQCphu'
)

PointLineItem.create!(
  points: 25, 
  source: 'Joined Loyalty Program', 
  user_id: 1, 
  created_at: '01/01/2013'
)

PointLineItem.create!(
  points: 410, 
  source: 'Placed an order', 
  user_id: 1, 
  created_at: '10/02/2013'
)

PointLineItem.create!(
  points: -250, 
  source: 'Redeemed with an order', 
  user_id: 1, 
  created_at: '15/02/2013'
)

PointLineItem.create!(
  points: 10, 
  source: 'Wrote a review', 
  user_id: 1, 
  created_at: '18/02/2013'
)

PointLineItem.create!(
  points: 570, 
  source: 'Placed an order', 
  user_id: 1, 
  created_at: '12/03/2013'
)

PointLineItem.create!(
  points: -500, 
  source: 'Redeemed with an order', 
  user_id: 1, 
  created_at: '15/04/2013'
)

PointLineItem.create!(
  points: 130, 
  source: 'Made a purchase', 
  user_id: 1, 
  created_at: '27/06/2013'
)
