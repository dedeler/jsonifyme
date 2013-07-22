json.extract! @user, :username, :email
if @user.person.present?
  keys = @user.person.attributes.keys
  keys.each do |key|
    unless @user.person[key].nil?
      next if key == "_id"
      json.set! key, @user.person[key]
    end
  end
end
