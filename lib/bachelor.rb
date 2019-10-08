def get_first_name_of_season_winner(data, season)
  winner = {}
  data[season].each do |person|
    if person["status"] == "Winner"
      winner = person
    end
  end
  name = winner["name"].split[0]
end

def get_contestant_name(data, occupation)
  name = {}
  data.each do |season, contestants|
    contestants.each do |person|
      if person["occupation"] == occupation
        name = person
      end
    end
  end
  contestant_name = name["name"]
end

def count_contestants_by_hometown(data, hometown)
  name = []
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        name << person
      end
    end
  end
  contestant_hometown = name.count
end

def get_occupation(data, hometown)
  name = {}
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        name = person
      end
    end
  end
  contestant_occupation = name["occupation"]
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |person|
    ages << person["age"].to_f
  end
  avg_age = (ages.sum / ages.count).round
end
