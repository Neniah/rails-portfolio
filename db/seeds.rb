# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end


10.times do |blog|
  Blog.create!(
    title: "Title #{blog}",
    body: "Contrary to popular belief,
    Lorem Ipsum is not simply random text. It has
    roots in a piece of classical Latin literature
    from 45 BC, making it over 2000 years old.
    Richard McClintock, a Latin professor at
    Hampden-Sydney College in Virginia, looked up
    one of the more obscure Latin words, consectetur,
    from a Lorem Ipsum passage, and going through
    the cites of the word in classical literature, discovered the
    undoubtable source.",
    topic_id: Topic.last.id
  )
end

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

8.times do |item|
  Portfolio.create!(
    title: "Portfolio title #{item}",
    subtitle: "Ruby on Rails",
    body: "Contrary to popular belief,
    Lorem Ipsum is not simply random text. It has
    roots in a piece of classical Latin literature
    from 45 BC, making it over 2000 years old.",
    main_image: 'http://via.placeholder.com/600x400',
    thumb_image: 'http://via.placeholder.com/350x200'
  )
end

1.times do |item|
  Portfolio.create!(
    title: "Portfolio title #{item}",
    subtitle: "Angular",
    body: "Contrary to popular belief,
    Lorem Ipsum is not simply random text. It has
    roots in a piece of classical Latin literature
    from 45 BC, making it over 2000 years old.",
    main_image: 'http://via.placeholder.com/600x400',
    thumb_image: 'http://via.placeholder.com/350x200'
  )
end


puts "adding 9 portfolio items"
puts "adding 5 skills"
puts "adding 10 blogs posts"
