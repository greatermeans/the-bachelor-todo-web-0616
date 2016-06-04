require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |data_hash,value|
    data_hash.each do |data_point,detail|
      if detail == "Winner"
        return data_hash["name"].split.first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,bachelors|
    bachelors.each do |data_hash,data_point|
      if data_hash["occupation"] == occupation
        return data_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  x = 0
  data.each do |season,bachelors|
    bachelors.each do |data_hash,data_point|
      if data_hash["hometown"] == hometown
        x += 1
      end
    end
  end
  return x
end

def get_occupation(data, hometown)
  data.each do |season,bachelors|
    bachelors.each do |data_hash,data_point|
      if data_hash["hometown"] == hometown
        return data_hash["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  x = 0
  y = 0
  data[season].each do |data_hash,value|
    data_hash.each do |data_point,detail|
      x += data_hash["age"].to_f
      y += 1.to_f
    end
  end
  return (x / y).round
end
