json.extract! @user, :username, :email
if @user.person.present?
  json.birth_date @user.person.birth_date
  json.name @user.person.name
end
