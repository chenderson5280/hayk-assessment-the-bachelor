require 'pry'

#require_relative './helper_file.rb'


def get_first_name_of_season_winner(data, season)
  data[season].map do |season|
    if season["status"] == "Winner"
      return season["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.select do |key,value|
    value.select do |inner_hash|
      if inner_hash["occupation"] == occupation
      return inner_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  contestant = []
  data.values.each do | inner_value|
    inner_value.each do |inside_array|
      if  inside_array["hometown"] == hometown 
      contestant  << hometown
      end
    end 
    end
  contestant.length
end

def get_occupation(data, hometown)
  data.values.each do |value|
    value.each do |inner_value|
    if inner_value["hometown"] == hometown
      return inner_value ["occupation"]
    end
    end
  end
end

def get_average_age_for_season(data, season)
  average_age = 0
  data.values.each do |value|
    value.each do |inner_value|
      average_age = average_age + inner_value["age"]
    #binding.pry
    end
    average_age / (data.values.length)
  end
  
  #binding.pry
end



#get_average_age_for_season(data,'season 10')
