require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here
  nyc_pigeons={}
  data.each do |color_gender_lives, value|
    value.each do |stats, names|
      names.each do |name_of_pigeon|
        if nyc_pigeons[name_of_pigeon]==nil 
          nyc_pigeons[name_of_pigeon]={}
        end
        if nyc_pigeons[name_of_pigeon][color_gender_lives]==nil
          nyc_pigeons[name_of_pigeon][color_gender_lives]=[]
        end
        if nyc_pigeons[name_of_pigeon][color_gender_lives][stats]==nil
          nyc_pigeons[name_of_pigeon][color_gender_lives][stats]=[]
        end
      end
      binding.pry
    end
    binding.pry
  end 
  
  nyc_pigeons
end


#method nyc pigeon organizer (hash called data)
# create an empty hash for list of pigeons with their name
  #iterate over the hash with color,gender, and lives, and the value of those keys
   #iterate over the values of the inner key, and the name values
    #iterate over the names of the pigeons with the value of the name
      #if the name value is not in the empty array made at the beginning
        #put it in the array
        #if the name and the matching value of the color, gender, and lives are not in the array, they are placed in the array 

#{:color=>{:purple=>["Theo", "Peter Jr.", "Lucky"], :grey=>["Theo", "Peter Jr.","Ms. K"], :white=>["Queenie", "Andrew", "Ms. K", "Alex"], :brown=>["Queenie", "Alex"]}, :gender=>{:male=>["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"], :female=>["Queenie", "Ms. K"]}, :lives=>{"Subway"=>["Theo", "Queenie"], "Central Park"=>["Alex", "Ms. K", "Lucky"], "Library"=>["Peter Jr."], "City Hall"=>["Andrew"]}}