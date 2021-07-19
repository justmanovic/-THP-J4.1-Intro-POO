require 'pry'

class User
  attr_accessor :email, :age
  @@tab_user_arr = []

  def initialize(email_to_save, age_to_save)
    @email = email_to_save.to_s
    @age = age_to_save.to_i
    @@tab_user_arr << self
  end

  def self.find_by_email(email_look_up)
    return @@tab_user_arr.select{|user| user.email == email_look_up}[0]
  end

  def self.all
    return @@tab_user_arr
  end

end

binding.pry
