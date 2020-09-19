require 'csv'
require 'awesome_print'



def get_all_olympic_athletes(filename)
  rows = CSV.read(filename, headers: true)
  required_fields = %w[ID Name Height Team Year City Sport Event Medal]
  rows.map do |line|
    # {"ID" => line["ID"]}
    athlete = {}
    required_fields.each do |field_name|
      athlete[field_name] = line[field_name]
    end
    athlete
  end
end


def total_medals_per_team(olympic_data)

total_medals_hash = Hash.new[0]
medals_options = %w(Gold Silver Bronze)
  olympic_data.map do |athlete|
    if athlete["Medal"].include?(medals_options)
      total_medals_hash = {athlete["Team"] = athlete["Medal"] += 1}
    end
  end
end




# def get_all_gold_medalists(olympic_data)
# end

# Random personal reminders/notes:
# return boots you.
# How does it know that its
# delete_if { |k, v| k == delete}
# # /Users/ada/Documents/ada_exercises/csv-practice/data/athlete_events.csv