require 'csv'

class ImportDataset
  def self.import
    data =  CSV.read("#{Rails.root}/data/lastfm.csv")

    data.each do |row|
      country = row[9]
      age = row[10]
      gender = row[11]

      if country.present? && age.present? && gender != "n"
        user =  User.create!(username: row[1], playlists: row[4], play_count: row[5], subscriber: row[6], country: row[9], age: row[10], gender: row[11])
        puts "Added #{user.inspect}"
      end
    end

  end
end
