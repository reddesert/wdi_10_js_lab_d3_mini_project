require "#{Rails.root}/lib/import/import_dataset"

namespace :import do
  desc "Import last.fm User Data"
  task import_dataset: :environment do
    ImportDataset.import
  end

end
