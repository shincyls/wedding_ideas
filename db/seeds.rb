# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

   User.create!([
    {email: "weddingideas.my@gmail.com", password: "qwerasdf", password_confirmation: "qwerasdf", role: 1},
    {email: "user_admin@gmail.com", password: "qwerasdf", password_confirmation: "qwerasdf", role: 2},
    {email: "item_admin@gmail.com", password: "qwerasdf", password_confirmation: "qwerasdf", role: 3},
    {email: "customer@gmail.com", password: "qwerasdf", password_confirmation: "qwerasdf", role: 0}
  ])

  Dress.create!([
    {name: "Dress 1", category: "Gown", code: "FS001", remarks: "Pretty Dress", colors: "White", price: "188", stock: 1, ms_length: 168.0, ms_bust: 53.0, ms_waist: 32.0, ms_hip: 53.0},
    {name: "Dress 2", category: "Gown", code: "FS002", remarks: "Pretty Dress", colors: "White", price: "288", stock: 2, ms_length: 175.0, ms_bust: 52.0, ms_waist: 31.0, ms_hip: 52.0},
    {name: "Dress 3", category: "Gown", code: "FS003", remarks: "Pretty Dress", colors: "White", price: "288", stock: 2, ms_length: 168.0, ms_bust: 51.0, ms_waist: 30.0, ms_hip: 51.0},
    {name: "Dress 4", category: "Kua", code: "FS004", remarks: "Pretty Dress", colors: "Yellow", price: "388", stock: 1, ms_length: 165.0, ms_bust: 50.0, ms_waist: 30.0, ms_hip: 50.0},
    {name: "Dress 5", category: "Kua", code: "FS005", remarks: "Pretty Dress", colors: "Red", price: "188", stock: 1, ms_length: 162.0, ms_bust: 49.0, ms_waist: 29.0, ms_hip: 49.0},
    {name: "Dress 6", category: "Dinner", code: "FS006", remarks: "Pretty Dress", colors: "Black", price: "288", stock: 3, ms_length: 159.0, ms_bust: 48.0, ms_waist: 29.0, ms_hip: 48.0},
    {name: "Dress 7", category: "Dinner", code: "FS007", remarks: "Pretty Dress", colors: "Gold", price: "188", stock: 1, ms_length: 156.0, ms_bust: 47.0, ms_waist: 28.0, ms_hip: 47.0},
    {name: "Dress 8", category: "Dinner", code: "FS008", remarks: "Pretty Dress", colors: "Pink", price: "288", stock: 1, ms_length: 153.0, ms_bust: 46.0, ms_waist: 28.0, ms_hip: 46.0}
  ])