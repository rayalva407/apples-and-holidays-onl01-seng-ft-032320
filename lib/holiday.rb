require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, festivities_hash|
    if season == :winter
      festivities_hash.each do |holiday, item_array|
        item_array << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, festivities_hash|
    puts "#{season.capitalize}:"
    festivities_hash.each do |holiday, item_array|
      puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{item_array.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, festivities_hash|
    festivities_hash.map do |holiday, item_array|
      if item_array.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end







