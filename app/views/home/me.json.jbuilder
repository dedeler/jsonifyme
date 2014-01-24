json.extract! @user, :username
unless @user.shows_email?
  json.set! :email, @user.email
end


if @user.person.present?
  json.age time_ago_in_words(@user.person.birth_date) if @user.person.birth_date.present?
  keys = @user.person.attributes.keys

  keys.each do |key|
    unless @user.person[key].nil? || @user.person[key].blank?
      next if key == "_id" || key == "birth_date"
      json.set! key, @user.person[key]
    end
  end
end
