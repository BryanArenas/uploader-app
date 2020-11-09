class Datum < ApplicationRecord
    

    require 'csv'
    require 'activerecord-import/base'
    require 'activerecord-import/active_record/adapters/postgresql_adapter'

    def self.my_import(file)
        data = []
        CSV.foreach(file.path, headers: true) do |row|
            data << Datum.new(row.to_h)
        end
        Datum.import data, recursive: true
    end


end
