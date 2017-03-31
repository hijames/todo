namespace :movies do
  desc "Displays information about movies custom rake tasks"
  task about: :environment do
    puts "Movies custom rake custom tasks"
  end

  desc "Pick and display a random genre from the database"
  task rand_genre: :environment do
    genre = Genre.offset(rand(Genre.count)).first

    puts "The genre chosen by science is: #{genre.name}"
  end
end