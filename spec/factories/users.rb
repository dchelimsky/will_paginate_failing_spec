Factory.sequence :name do |n|
  "name-#{n}"
end

Factory.define :user do |user|
  user.name  { Factory.next :name }
end