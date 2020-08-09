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
        nyc_pigeons[name_of_pigeon][color_gender_lives].push(stats.to_s)
      end
    end
  end 
  nyc_pigeons
end