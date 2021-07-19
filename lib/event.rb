require 'pry'
require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees_arr
#   attr_writer :duration_s

#   Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])


  def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_arr_to_save)
    @start_date = Time.parse(start_date_to_save.to_s)
    @duration = duration_to_save.to_i
    @title = title_to_save.to_s
    @attendees_arr = attendees_arr_to_save
    unless  attendees_arr_to_save.class != Array
      puts "attendees need to be an array"
    end
    print @duration_s
  end

  def postpone_24h
    @start_date += 24*3600
  end

  def end_date
    return @start_date + @duration * 60
  end

  def is_past?
    return Time.now > @start_date
  end

  def is_futur?
    return !self.is_past?
  end

  def is_soon?
    return @start_date - Time.now < 30*60
  end

  def to_s
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date.strftime("%Y-%m-%d %H:%M")}"
    puts ">Durée : #{@duration} minutes"
    print ">Invités : #{@attendees_arr.join(", ")}"
    puts
  end

  # Tu peux afficher le Time au format européen avec (teste ça dans IRB) my_time.strftime("%H:%M:%S %d/%m/%Y")

  def self.all
    return 
  end

end

binding.pry