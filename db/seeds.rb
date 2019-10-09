User.create!(
  email: "test@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User",
)

puts "1 regular user created"


3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end
puts "3 Topics created"


10.times do |blog|
 Blog.create!(
  title:"My Blog Post #{blog}",
  body: 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
  topic_id: Topic.last.id
  )

end
puts "10 blog posts created"

5.times do |skill|
 Skill.create!(
  title: "Rails #{skill}",
  percent_utilized: "15"
  )
end
puts "5 skills created"


8.times do |portfolio_item|
 Portfolio.create!(
  title: "Portfolio title: #{portfolio_item}",
  subtitle: "Ruby On Rails",
  body: 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
  main_image: "http://placehold.it/600x400",
  thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |portfolio_item|
 Portfolio.create!(
  title: "Portfolio title: #{portfolio_item}",
  subtitle: "Angular",
  body: 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.',
  main_image: "http://placehold.it/600x400",
  thumb_image: "http://placehold.it/350x200"
  )
end
puts "9 portfolio items created"

3.times do |technology|
  Technology.last.technologies.create!(
    name: "Technology #{technology}"
  )
end
puts "3 technologies created"
