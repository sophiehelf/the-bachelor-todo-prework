require 'pry'

def get_first_name_of_season_winner(data, season)
	data.each do |saison, arr|
		if saison == season 
			arr.each do |person|
				if person["status"] == "Winner"
					full_name = person["name"]
					return full_name.split(" ")[0]
				end
			end
		end
	end
end

def get_contestant_name(data, occupation)
  data.each do |season, arr|
  	arr.each do |person|
  		if person["occupation"] == occupation
  			return person["name"]
  		end
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, arr|
  	arr.each do |person|
  		if person["hometown"] == hometown
  			counter += 1 
  		end
  	end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, arr|
  	arr.each do |person|
  		if person["hometown"] == hometown
  			return person["occupation"]
  		end
  	end
  end
end

def get_average_age_for_season(data, season)
	average = 0
  data.each do |year, arr|
  	if year == season 
  		arr.each do |person|
  			average += person["age"].to_f
  		end
      return (average / arr.length).round
  	end
  end
end
