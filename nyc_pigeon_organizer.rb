require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  data.reduce({}) do |memo, (k, v)|
    v.reduce(nil) do |memo2, (k2, v2)|
      v2.map do |e|
        k = k.to_s
        k2 = k2.to_s
        if !memo.has_key?(e)
          memo[e] = {k => [k2]}
        elsif memo.has_key?(e) && !memo[e].has_key?(k)
          memo[e][k] = [k2]
        else
          memo[e][k].push(k2)
        end
      end
      #binding.pry
      memo2
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
puts nyc_pigeon_organizer(pigeon_data)
