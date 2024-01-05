# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

article_titles = [
    "The Cathedral and the Bazaar",
    "Reflections on Trusting Trust",
    "No Silver Bullet — Essence and Accidents of Software Engineering",
    "The Mythical Man-Month",
    "You and Your Research",
    "The Coming Software Apocalypse",
    "The Turing Test",
    "A Few Useful Things to Know About Machine Learning",
    "Out of the Tar Pit",
    "The Pragmatic Programmer: Your Journey to Mastery"
  ]
  
  article_titles.each do |title|
    Article.create(title: title)
  end
