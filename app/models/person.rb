class Person
  include Mongoid::Document

  #relations 
  embedded_in :user

  field :name, type: String
  field :birth_date, type: Date
end
