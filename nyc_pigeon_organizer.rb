require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here
   pigeon_list = {}
  data.each do |color_gender_lives, value|
    value.each do |stats, all_names|
      all_names.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][color_gender_lives] == nil
          pigeon_list[name][color_gender_lives] = []
        end
        pigeon_list[name][color_gender_lives].push(stats.to_s)
      end
    end 
  end
  pigeon_list
end

#method nyc pigeon organizer (hash called data)
# create a list of pigeons with their name
  #iterate over the hash with color,gender, and lives, and the value of those keys
   #iterate over the values 

#{:color=>{:purple=>["Theo", "Peter Jr.", "Lucky"], :grey=>["Theo", "Peter Jr.","Ms. K"], :white=>["Queenie", "Andrew", "Ms. K", "Alex"], :brown=>["Queenie", "Alex"]}, :gender=>{:male=>["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"], :female=>["Queenie", "Ms. K"]}, :lives=>{"Subway"=>["Theo", "Queenie"], "Central Park"=>["Alex", "Ms. K", "Lucky"], "Library"=>["Peter Jr."], "City Hall"=>["Andrew"]}}