# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Exercise.create([
    {name: "Bench Press", target_area: "Chest", sets: 3, reps: 10},
    {name: "Cable Flyes", target_area: "Chest", sets: 5, reps: 10},
    {name: "Squat", target_area: "Legs", sets: 3, reps: 5},
    {name: "Bulgarian Split Squat", target_area: "Glutes", sets: 3, reps: 10},
    {name: "Deadlift", target_area: "Legs", sets: 3, reps: 5},
    {name: "Overhead Press", target_area: "Shoulders", sets: 3, reps: 10},
    {name: "Bicep Curls", target_area: "Biceps", sets: 5, reps: 15},
    {name: "Lat Pulldowns", target_area: "Back", sets: 3, reps: 10},
    {name: "Abdominal Crunches", target_area: "Abdominals", sets: 5, reps: 20},
    {name: "Russian Twists", target_area: "Abdominals", sets: 5, reps: 20}
])

Routine.create([
    {name: "Upper Body", difficulty: "Medium"},
    {name: "Lower Body", difficulty: "Medium"},
    {name: "Summer Body", difficulty: "Easy"},
    {name: "Widow Maker", difficulty: "Hard"}
])

puts "Database seeded!"