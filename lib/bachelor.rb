require "pry"

def get_first_name_of_season_winner(data, season)
  winner = []
  data[season].each do |contestant|
    if contestant.values.include?("Winner")
      names = contestant["name"].split(" ")
      winner << names.first
    end
  end
  winner.join
end


def get_contestant_name(data, occupation)
  job_search = []
  data.each do |season, x|
    data[season].each do |contestant|
      if contestant.values.include?(occupation)
        names = contestant["name"]
        job_search << names
      end
    end
  end
  job_search.join
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
