3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    topic_id: Topic.last.id
  )
end

puts "Blog sample data created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 13
  )
end

puts "Skills sample data created"

8.times do |portofolio_item|
  Portofolio.create!(
    title: "Portoflio #{portofolio_item}",
    subtitle: "Ruby on Rails" ,
    body: "Test of Body Content it amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut",
    main_image: "https://place-hold.it/600X400",
    thumb_image: "https://place-hold.it/300x200"
  )
end

1.times do |portofolio_item|
  Portofolio.create!(
    title: "Portoflio #{portofolio_item}",
    subtitle: "Angular",
    body: "Test of Body Content it amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut",
    main_image: "https://place-hold.it/600X400",
    thumb_image: "https://place-hold.it/300x200"
  )
end

puts "Portofolio sample data created"