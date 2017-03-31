class CreateGenres < ActiveRecord::Migration
    def self.up
        create_table :genres do |t|
            t.column :name, :string
        end

        Genre.create :name => "Horror"
        Genre.create :name => "Action"
        Genre.create :name => "Romance"
        Genre.create :name => "Mystery"
        Genre.create :name => "History"
    end

    def self.down
        drop_table :genres
    end
end