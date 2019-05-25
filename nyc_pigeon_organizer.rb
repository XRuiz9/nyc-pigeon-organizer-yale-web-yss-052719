def nyc_pigeon_organizer(data)
  piglist = {}
  data.each do |category, info|
    info.each do |subinfo, names|
      names.each do |name|
        if piglist.keys.include?(name)
          if piglist[name][category]
            piglist[name][category] << subinfo
          else
            piglist[name][category] = subinfo
          end
        else
          piglist[name][category] = subinfo
        end
      end
    end
  end
  piglist
end
