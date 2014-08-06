namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Fab",
                 email: "fabkwak@yahoo.com",
                 password: "foobar",
                 password_confirmation: "foobar")
    admin.toggle!(:admin)
    5.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end

    griffith = GolfCourse.create!(name: "Griffith Park: Wilson Golf Course")
    Tee.create!(name: "Black", 
                golf_course_id: griffith.id,
                slope: "123",
                par: "72",
                rating: "72.8",
                distance: "6952")


    10.times do |g|
      name = Faker::Lorem.word
      golfcourse = GolfCourse.create!(name: name)
      
      slope = rand(120.0..140.0).round(1)
      rating = rand(70.0..75.0)
      par = rand(68..75)    
      distance = rand(5600..7200)
      black = Tee.create!(name: "Black", 
                          golf_course_id: golfcourse.id,
                          slope: slope,
                          par: par,
                          distance: distance,
                          rating: rating)
      cor = rand(2..3)
      cor.times do |c|
        name = Faker::Lorem.word
        course = CourseNine.create!(name: name)
        9.times do |h|
          par = rand(3..5)
          distance = rand(125..520)
          handi = rand(1..9)
          Hole.create!(golf_course_id: golfcourse.id,
                       tee_id: black.id,
                       num: h,
                       par: par,
                       distance: distance,
                       handicap: handi,
                       course_nine_id: course.id)
        end #h
      end #c
    end #g
  end #task
end