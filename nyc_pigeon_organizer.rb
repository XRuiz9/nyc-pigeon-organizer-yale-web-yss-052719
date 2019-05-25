def nyc_pigeon_organizer(data)
  piglist = {}
  data.each do |category, info|
    info.each do |subinfo, names|
      names.each do |name|
        if piglist.keys.include?(name)
          if piglist[name][category]
            if piglist[name][category].include?(subinfo)
              piglist[name][category]
            else
              piglist[name][category] << subinfo.to_s
            end
          else
            piglist[name][category] = subinfo.to_s
          end
        else
          piglist[name] = {category => [subinfo.to_s]}
        end
      end
    end
  end
  piglist["Theo"][:gender]
end

nyc_pigeon_organizer({
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
})
