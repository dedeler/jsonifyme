class Person
  include Mongoid::Document

  #relations 
  embedded_in :user

  field :first_name, type: String
  field :last_name, type: String
  field :birth_date, type: Date
end
