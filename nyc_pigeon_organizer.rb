def nyc_pigeon_organizer(data)
  # write your code here!
  #for each value, add to list of names
  data.reduce() do |memo, (key, value)|
    # puts key
    # puts value
    value.reduce(nil) do |inner_memo, (inner_key, inner_value)|
      inner_value.map do |name|
        memo[:name.to_sym] = {}
        # memo[name][key] = []
        # memo[name][key].append(inner_key.to_s)
      end

      # puts inner_key
      # puts inner_value

      inner_memo
    end
  memo
  end
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
p nyc_pigeon_organizer(pigeon_data)
