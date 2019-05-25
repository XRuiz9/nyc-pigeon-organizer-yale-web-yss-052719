def nyc_pigeon_organizer(data)
  piglist = {}
  data.each do |category, info|
    info.each do |subinfo, names|
      names.each do |name|
        if piglist.keys.include?(name)
          if piglist[name][category]
            if piglist[name][category].include?(subinfo.to_s)
              piglist[name][category]
            else
              piglist[name][category] << subinfo.to_s
              piglist[name][category.uniq!]
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
  piglist
end
