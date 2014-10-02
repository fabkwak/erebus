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

    griffith = GolfCourse.create!(name: "Griffith Park Wilson Golf Course")
    blacktees = Tee.create!(name: "Black", 
                golf_course_id: griffith.id,
                slope: "123",
                par: "72",
                rating: "72.8",
                distance: "6952",
                pos: "1")

    front = CourseNine.create!(name: "Front")
    
    CourseRelationship.create!(course_nine_id: front.id, 
                               tee_id: blacktees.id, 
                               pos: "1")

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "1",
                       par: "5",
                       distance: "536",
                       handicap: "13",
                       course_nine_id: front.id)
    
    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "2",
                       par: "4",
                       distance: "416",
                       handicap: "1",
                       course_nine_id: front.id)
    
    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "3",
                       par: "3",
                       distance: "192",
                       handicap: "7",
                       course_nine_id: front.id)

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "4",
                       par: "4",
                       distance: "335",
                       handicap: "17",
                       course_nine_id: front.id)                  

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "5",
                       par: "4",
                       distance: "329",
                       handicap: "15",
                       course_nine_id: front.id)                   

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "6",
                       par: "4",
                       distance: "397",
                       handicap: "9",
                       course_nine_id: front.id)

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "7",
                       par: "4",
                       distance: "397",
                       handicap: "5",
                       course_nine_id: front.id)

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "8",
                       par: "4",
                       distance: "431",
                       handicap: "3",
                       course_nine_id: front.id) 

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "9",
                       par: "5",
                       distance: "576",
                       handicap: "11",
                       course_nine_id: front.id)

    back = CourseNine.create!(name: "Back")
        
    CourseRelationship.create!(course_nine_id: back.id, 
                               tee_id: blacktees.id, 
                               pos: "2")

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "10",
                       par: "4",
                       distance: "410",
                       handicap: "4",
                       course_nine_id: back.id)

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "11",
                       par: "3",
                       distance: "222",
                       handicap: "6",
                       course_nine_id: back.id)                       

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "12",
                       par: "4",
                       distance: "367",
                       handicap: "16",
                       course_nine_id: back.id) 

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "13",
                       par: "4",
                       distance: "375",
                       handicap: "14",
                       course_nine_id: back.id) 

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "14",
                       par: "5",
                       distance: "577",
                       handicap: "10",
                       course_nine_id: back.id) 

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "15",
                       par: "3",
                       distance: "152",
                       handicap: "18",
                       course_nine_id: back.id) 

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "16",
                       par: "4",
                       distance: "438",
                       handicap: "2",
                       course_nine_id: back.id) 

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "17",
                       par: "4",
                       distance: "398",
                       handicap: "12",
                       course_nine_id: back.id) 

    Hole.create!(golf_course_id: griffith.id,
                       tee_id: blacktees.id,
                       num: "18",
                       par: "4",
                       distance: "399",
                       handicap: "8",
                       course_nine_id: back.id)                                                                      

    bluetees = Tee.create!(name: "Blue", 
                golf_course_id: griffith.id,
                slope: "122",
                par: "72",
                rating: "71.8",
                distance: "6685",
                pos: "2")

    whitetees = Tee.create!(name: "White", 
                golf_course_id: griffith.id,
                slope: "119",
                par: "72",
                rating: "70.6",
                distance: "6119",
                pos: "3") 


                    
    #10.times do |g|
     # name = Faker::Lorem.word
      #golfcourse = GolfCourse.create!(name: name)
      
     # slope = rand(120.0..140.0).round(1)
      #rating = rand(70.0..75.0)
      #par = rand(68..75)    
      #distance = rand(5600..7200)
      #black = Tee.create!(name: name, 
       #                   golf_course_id: golfcourse.id,
        #                  slope: slope,
         #                 par: par,
          #                distance: distance,
           #               rating: rating)
      #2.times do |c|
        #name = Faker::Lorem.word
       # if c = 2
        #  course = CourseNine.create!(name: "Front", golf_course_id:  )
        #else
         # course = CourseNine.create!(name: "Back", golf_course_id )
        #end

        #9.times do |h|
         # par = rand(3..5)
          #distance = rand(125..520)
          #handi = rand(1..9)
          #Hole.create!(golf_course_id: golfcourse.id,
           #            tee_id: black.id,
            #           num: h,
             #          par: par,
              #         distance: distance,
               #        handicap: handi,
                #       course_nine_id: course.id)
        #end #h
      #end #c
    #end #g
  end #task
end