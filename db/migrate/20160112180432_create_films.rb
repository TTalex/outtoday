class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :Title
      t.string :Year
      t.string :Rated
      t.string :Released
      t.string :Runtime
      t.string :Genre
      t.string :Director
      t.string :Writer
      t.string :Actors
      t.string :Plot
      t.string :Language
      t.string :Country
      t.string :Awards
      t.string :Poster
      t.string :Metascore
      t.string :ImdbRating
      t.string :ImdbVotes
      t.string :ImdbID
      t.string :Type
      t.timestamps null: false
    end
  end
end
