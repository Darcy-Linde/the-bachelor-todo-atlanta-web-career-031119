def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestants|
    if season_number == season 
      contestants.each do |info|
        if info["status"] == "Winner"
          return info["name"].split.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestants|
    contestants.each do |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_number, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season_number, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  def get_average_age_for_season(data, season)
  total_age = 0
  number_contestants = 0
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |info|
        total_age += info["age"].to_i
        number_contestants += 1
      end
    end
  end
  
  total_age/number_contestants
end
end
