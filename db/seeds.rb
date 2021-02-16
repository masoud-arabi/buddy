
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

puts "Destroying contacts"
Contact.destroy_all
puts "Destroying connections"
Connection.destroy_all
puts "Destroying jobs"
Job.destroy_all
puts "Destroying companies"
Company.destroy_all
puts "Destroying users"
User.destroy_all
puts "Destroying priorities"
Priority.destroy_all
puts "Destroying conversations"
Conversation.destroy_all

puts "creating users"

# user_1 = User.new(
#   email: "alexp.coeff@gmail.com",
#   password: "123456",
#   first_name: "Alexandre",
#   last_name: "Coëffet"
# )
user_1 = User.new(
  email: "visitor@gmail.com",
  password: "123456",
  first_name: "visitor's firstname",
  last_name: "visitor's lastname"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1605906080/vranbp25rvxz0qkrjyi5ar3u6ghs.jpg")
user_1.photo.attach(io: file, filename: 'vranbp25rvxz0qkrjyi5ar3u6ghs.jpg', content_type: 'image/jpg')
user_1.save!

user_2 = User.create!(
  email: "maxime@gmail.com",
  password: "123456789",
  first_name: "Maxime",
  last_name: "Lapraye"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607005176/max.png")
user_2.photo.attach(io: file, filename: 'max.png', content_type: 'image/png')
user_2.save!

user_3 = User.create!(
  email: "masoud@gmail.com",
  password: "123456789",
  first_name: "Masoud",
  last_name: "Arabi"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607110873/Company%20logo/IMG_0654_cne4gq.jpg")
user_3.photo.attach(io: file, filename: 'IMG_0654_cne4gq.jpg', content_type: 'image/jpg')
user_3.save!

10.times do
  User.create!(
    email: Faker::Internet.email,
    password: "123456"
  )
end



 puts "creating companies"

ubisoft = Company.create!(
name: "Ubisoft",
industry: "Video game",
address: "5505 Boulevard Saint-Laurent, Montreal"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607113124/Company%20logo/ZGID6CM0_gelwml.jpg")
ubisoft.photo.attach(io: file, filename: 'ZGID6CM0_gelwml.jpg', content_type: 'image/jpg')
ubisoft.save!

element_ai = Company.create!(
name: "Element AI",
industry: "Artificial Intelligence",
address: "6650 Rue Saint-Urbain, Montreal"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607110595/Company%20logo/Element_AI_logo_wn7wgz.png")
element_ai.photo.attach(io: file, filename: 'Element_AI_logo_wn7wgz.png', content_type: 'image/png')
element_ai.save!

metrio = Company.create!(
name: "Logiciels Metrio",
industry: "Sustainability",
address: "94 Avenue Laurier Ouest, Montreal"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607110595/Company%20logo/metrio-web-500x500-350x350_pvvwgi.png")
metrio.photo.attach(io: file, filename: 'metrio-web-500x500-350x350_pvvwgi.png', content_type: 'image/png')
metrio.save!

alithya = Company.create!(
name: "Alithya",
industry: "Consulting",
address: "1100 Boulevard Robert-Bourassa, Montreal"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607110595/Company%20logo/eMJcXdQN_omslcp.jpg")
alithya.photo.attach(io: file, filename: 'eMJcXdQN_omslcp.jpg', content_type: 'image/jpg')
alithya.save!

ssense = Company.create!(
name: "SSENSE",
industry: "eCommerce",
address: "418 Rue Saint-Sulpice, Montreal"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607110595/Company%20logo/e7867f8db0b8b8b4be8c5a9e0f11ada3_cpdtwh.jpg")
ssense.photo.attach(io: file, filename: 'e7867f8db0b8b8b4be8c5a9e0f11ada3_cpdtwh.jpg', content_type: 'image/jpg')
ssense.save!

absolunet = Company.create!(
name: "Absolunet",
industry: "eCommerce",
address: "4398 Boulevard Saint-Laurent, Montreal"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607110596/Company%20logo/te%CC%81le%CC%81chargement_npflmr.png")
absolunet.photo.attach(io: file, filename: 'te%CC%81le%CC%81chargement_npflmr.png', content_type: 'image/png')
absolunet.save!

lightspeed = Company.create!(
name: "Lightspeed",
industry: "eCommerce",
address: "700 Saint-Antoine Street, Montreal"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607110596/Company%20logo/ybduauzyr0ixokn4vryr_k113xv.png")
lightspeed.photo.attach(io: file, filename: 'ybduauzyr0ixokn4vryr_k113xv.png', content_type: 'image/png')
lightspeed.save!

bello_solutions = Company.create!(
name: "Bello-Solutions",
industry: "Sustainability",
address: "Montreal"
)
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607110595/Company%20logo/logoBelloSolutions_wkqu79.png")
bello_solutions.photo.attach(io: file, filename: 'logoBelloSolutions_wkqu79.png', content_type: 'image/png')
bello_solutions.save!

puts "creating jobs"

  front_end_developper_alithya = Job.create!(
  title: "Front-end developer",
  description: "<p>We are looking for a proactive programmer with a keen eye for
  design for the position of Front End Developer. You will be responsible for
  ensuring the alignment of web design and user experience requirements, optimizing
  web pages for maximum efficiency and maintaining brand consistency across
  all web pages, among other duties.</p>
  <div class='responsibilities'> <h2>Responsibilities:</h2>
  <ul>
  <li>Determining the structure and design of web pages.</li>
  <li>Ensuring user experience determines design choices.</li>
  <li>Developing features to enhance the user experience.</li>
  <li>Striking a balance between functional and aesthetic design.</li>
  <li>Ensuring web design is optimized for smartphones.</li>
  <li>Building reusable code for future use.</li>
  <li>Optimizing web pages for maximum speed and scalability.</li>
  <li>Utilizing a variety of markup languages to write web pages.</li>
  <li>Maintaining brand consistency throughout design.</li>
  </div>
  <div class='requirements'><h2>Requirements:</h2>
  </ul>
  <ul>
  <li>Degree in Computer Science or related field.</li>
  <li>Understanding of key design principles.</li>
  <li>Proficiency with HTML, CSS, JavaScript and jQuery.</li>
  <li>Understanding of server-side CSS.</li>
  <li>Experience with graphic design applications such as Adobe Illustrator.</li>
  <li>Experience with responsive and adaptive design.</li>
  <li>Understanding of SEO principles.</li>
  <li>Good problem solving skills.</li>
  <li>Excellent verbal communication skills.</li>
  <li>Good interpersonal skills.</li>
  </ul>
  </div>",
  created_at: Faker::Date.between(from: '2020-11-15', to: Date.today),
  skills: "<ul>
  <li>HTML</li>
  <li>CSS</li>
  <li>Javascript</li>
  <li>jQuery</li>
  <li>SEO</li>
  </ul>",
  years_experience: rand(1..5),
  company: alithya
  )

  front_end_developper_ssense = Job.create!(
  title: "Front-end developer",
  description: "<p>We are looking for a proactive programmer with a keen eye for
  design for the position of Front End Developer. You will be responsible for
  ensuring the alignment of web design and user experience requirements, optimizing
  web pages for maximum efficiency and maintaining brand consistency across
  all web pages, among other duties.</p>
  <div class='responsibilities'> <h2>Responsibilities:</h2>
  <ul>
  <li>Determining the structure and design of web pages.</li>
  <li>Ensuring user experience determines design choices.</li>
  <li>Developing features to enhance the user experience.</li>
  <li>Striking a balance between functional and aesthetic design.</li>
  <li>Ensuring web design is optimized for smartphones.</li>
  <li>Building reusable code for future use.</li>
  <li>Optimizing web pages for maximum speed and scalability.</li>
  <li>Utilizing a variety of markup languages to write web pages.</li>
  <li>Maintaining brand consistency throughout design.</li>
  </div>
  <div class='requirements'><h2>Requirements:</h2>
  </ul>
  <ul>
  <li>Degree in Computer Science or related field.</li>
  <li>Understanding of key design principles.</li>
  <li>Proficiency with HTML, CSS, JavaScript and jQuery.</li>
  <li>Understanding of server-side CSS.</li>
  <li>Experience with graphic design applications such as Adobe Illustrator.</li>
  <li>Experience with responsive and adaptive design.</li>
  <li>Understanding of SEO principles.</li>
  <li>Good problem solving skills.</li>
  <li>Excellent verbal communication skills.</li>
  <li>Good interpersonal skills.</li>
  </ul>
  </div>",
  created_at: Faker::Date.between(from: '2020-11-15', to: Date.today),
  skills: "<ul>
  <li>HTML</li>
  <li>CSS</li>
  <li>Javascript</li>
  <li>jQuery</li>
  <li>SEO</li>
  </ul>",
  years_experience: rand(1..5),
  company: ssense
  )

front_end_developper_ubisoft = Job.create!(
  title: "Front-end developer",
  description: "<p>We are looking for a proactive programmer with a keen eye for
  design for the position of Front End Developer. You will be responsible for
  ensuring the alignment of web design and user experience requirements, optimizing
  web pages for maximum efficiency and maintaining brand consistency across
  all web pages, among other duties.</p>
  <div class='responsibilities'> <h2>Responsibilities:</h2>
  <ul>
  <li>Determining the structure and design of web pages.</li>
  <li>Ensuring user experience determines design choices.</li>
  <li>Developing features to enhance the user experience.</li>
  <li>Striking a balance between functional and aesthetic design.</li>
  <li>Ensuring web design is optimized for smartphones.</li>
  <li>Building reusable code for future use.</li>
  <li>Optimizing web pages for maximum speed and scalability.</li>
  <li>Utilizing a variety of markup languages to write web pages.</li>
  <li>Maintaining brand consistency throughout design.</li>
  </div>
  <div class='requirements'><h2>Requirements:</h2>
  </ul>
  <ul>
  <li>Degree in Computer Science or related field.</li>
  <li>Understanding of key design principles.</li>
  <li>Proficiency with HTML, CSS, JavaScript and jQuery.</li>
  <li>Understanding of server-side CSS.</li>
  <li>Experience with graphic design applications such as Adobe Illustrator.</li>
  <li>Experience with responsive and adaptive design.</li>
  <li>Understanding of SEO principles.</li>
  <li>Good problem solving skills.</li>
  <li>Excellent verbal communication skills.</li>
  <li>Good interpersonal skills.</li>
  </ul>
  </div>",
  created_at: Faker::Date.between(from: '2020-11-15', to: Date.today),
  skills: "<ul>
  <li>HTML</li>
  <li>CSS</li>
  <li>Javascript</li>
  <li>jQuery</li>
  <li>SEO</li>
  </ul>",
  years_experience: rand(1..5),
  company: ubisoft
  )

front_end_developper_lightspeed = Job.create!(
  title: "Front-end developer",
  description: "<p>We are looking for a proactive programmer with a keen eye for
  design for the position of Front End Developer. You will be responsible for
  ensuring the alignment of web design and user experience requirements, optimizing
  web pages for maximum efficiency and maintaining brand consistency across
  all web pages, among other duties.</p>
  <div class='responsibilities'> <h2>Responsibilities:</h2>
  <ul>
  <li>Determining the structure and design of web pages.</li>
  <li>Ensuring user experience determines design choices.</li>
  <li>Developing features to enhance the user experience.</li>
  <li>Striking a balance between functional and aesthetic design.</li>
  <li>Ensuring web design is optimized for smartphones.</li>
  <li>Building reusable code for future use.</li>
  <li>Optimizing web pages for maximum speed and scalability.</li>
  <li>Utilizing a variety of markup languages to write web pages.</li>
  <li>Maintaining brand consistency throughout design.</li>
  </div>
  <div class='requirements'><h2>Requirements:</h2>
  </ul>
  <ul>
  <li>Degree in Computer Science or related field.</li>
  <li>Understanding of key design principles.</li>
  <li>Proficiency with HTML, CSS, JavaScript and jQuery.</li>
  <li>Understanding of server-side CSS.</li>
  <li>Experience with graphic design applications such as Adobe Illustrator.</li>
  <li>Experience with responsive and adaptive design.</li>
  <li>Understanding of SEO principles.</li>
  <li>Good problem solving skills.</li>
  <li>Excellent verbal communication skills.</li>
  <li>Good interpersonal skills.</li>
  </ul>
  </div>",
  created_at: Faker::Date.between(from: '2020-11-15', to: Date.today),
  skills: "<ul>
  <li>HTML</li>
  <li>CSS</li>
  <li>Javascript</li>
  <li>jQuery</li>
  <li>SEO</li>
  </ul>",
  years_experience: rand(1..5),
  company: lightspeed
  )

4.times do
  back_end_developper = Job.create!(
  title: "Back-end developer",
  description: "<p>We are looking for an analytical, results-driven Back-end Developer
  who will work with team members to troubleshoot and improve current back-end applications
  and processes. The Back-end Developer will use his or her understanding of programming languages
  and tools to analyze current codes and industry developments, formulate more efficient processes,
  solve problems, and create a more seamless experience for users. You should have excellent
  communication, computer, and project management skills.</p>
  <div class='responsibilities'><h2>Responsibilities:</h2>
  <ul>
  <li>Compile and analyze data, processes, and codes to troubleshoot problems and
  identify areas for improvement.</li>
  <li>Collaborating with the front-end developers and other team members to establish
  objectives and design more functional, cohesive codes to enhance the user experience.</li>
  <li>Developing ideas for new programs, products, or features by monitoring industry
  developments and trends.</li>
  <li>Recording data and reporting it to proper parties, such as clients or leadership.</li>
  <li>Participating in continuing education and training to remain current on best
  practices, learn new programming languages, and better assist other team members.</li>
  <li>Taking lead on projects, as needed.</li>
  </div>
  <div class='requirements'><h2>Requirements:</h2>
  <ul>
  <li>Bachelor’s degree in computer programming, computer science, or a related field.</li>
  <li>Fluency or understanding of specific languages, such as Java, Ruby, C++, PHP, or Python,
  and operating systems may be required.</li>
  <li>Strong understanding of the web development cycle and programming techniques and tools.</li>
  <li>Focus on efficiency, user experience, and process improvement.</li>
  <li>Excellent project and time management skills.</li>
  <li>Strong problem solving and verbal and written communication skills.</li>
  <li>Ability to work independently or with a group.</li>
  <li>Willingness to sit at desk for extended periods.</li>
  </ul>
  </div>",
  created_at: Faker::Date.between(from: '2020-11-15', to: Date.today),
  skills: "<ul>
  <li>Java</li>
  <li>PHP</li>
  <li>Python</li>
  <li>Ruby</li>
  <li>C++</li>
  </ul>",
  years_experience: rand(1..5),
  company: [ssense, metrio, element_ai, ubisoft, absolunet, alithya, lightspeed].sample
  )
end

back_end_developper = Job.create!(
  title: "Back-end developer",
  description: "<p>We are looking for an analytical, results-driven Back-end Developer
  who will work with team members to troubleshoot and improve current back-end applications
  and processes. The Back-end Developer will use his or her understanding of programming languages
  and tools to analyze current codes and industry developments, formulate more efficient processes,
  solve problems, and create a more seamless experience for users. You should have excellent
  communication, computer, and project management skills.</p>
  <div class='responsibilities'><h2>Responsibilities:</h2>
  <ul>
  <li>Compile and analyze data, processes, and codes to troubleshoot problems and
  identify areas for improvement.</li>
  <li>Collaborating with the front-end developers and other team members to establish
  objectives and design more functional, cohesive codes to enhance the user experience.</li>
  <li>Developing ideas for new programs, products, or features by monitoring industry
  developments and trends.</li>
  <li>Recording data and reporting it to proper parties, such as clients or leadership.</li>
  <li>Participating in continuing education and training to remain current on best
  practices, learn new programming languages, and better assist other team members.</li>
  <li>Taking lead on projects, as needed.</li>
  </div>
  <div class='requirements'><h2>Requirements:</h2>
  <ul>
  <li>Bachelor’s degree in computer programming, computer science, or a related field.</li>
  <li>Fluency or understanding of specific languages, such as Java, Ruby, C++, PHP, or Python,
  and operating systems may be required.</li>
  <li>Strong understanding of the web development cycle and programming techniques and tools.</li>
  <li>Focus on efficiency, user experience, and process improvement.</li>
  <li>Excellent project and time management skills.</li>
  <li>Strong problem solving and verbal and written communication skills.</li>
  <li>Ability to work independently or with a group.</li>
  <li>Willingness to sit at desk for extended periods.</li>
  </ul>
  </div>",
  created_at: Faker::Date.between(from: '2020-11-15', to: Date.today),
  skills: "<ul>
  <li>Java</li>
  <li>PHP</li>
  <li>Python</li>
  <li>Ruby</li>
  <li>C++</li>
  </ul>",
  years_experience: rand(1..5),
  company: bello_solutions
  )

4.times do
  product_owner = Job.create!(
  title: "Product Owner",
  description: "<p>We are looking for a dedicated Product Director to be the point
  person in our scrum team. The Product Owner will be responsible for defining
  the product vision and managing the product development process. Other
  responsibilities include supporting the scrum team, managing backlog items, and
  optimizing the value of the product(s). You should also be able to lead the product
  development team toward achieving the vision and mission of the organization.</p>
  <div class='responsibilities'><h2>Responsibilities:</h2>
  <ul>
  <li>Strategizing and presenting ideas to stakeholders.</li>
  <li>Defining product features according to customer needs.</li>
  <li>Leading the development process.</li>
  <li>Acting as the main point of contact between teams and stakeholders.</li>
  <li>Managing and prioritizing product backlog items.</li>
  <li>Assisting the scrum/product development team to meet the objectives of each sprint.</li>
  <li>Optimizing web pages for maximum speed and scalability.</li>
  <li>Adjusting and improving each iteration of the product before release.</li>
  <li>Identifying areas of improvement.</li>
  <li>Keeping customers and stakeholders informed of the status of the product.</li>
  </div>
  <div class='requirements'><h2>Requirements:</h2>
  </ul>
  <ul>
  <li>BA in Computer Science, Information Systems, or related field.</li>
  <li>Previous working experience as a Product Owner.</li>
  <li>In-depth knowledge of Agile methodologies.</li>
  <li>Strong analytical and problem-solving skills.</li>
  <li>Strong communication skills, written and verbal.</li>
  <li>Strong presentation skills.</li>
  <li>Ability to multi-task and work under pressure.</li>
  </ul>
  </div>",
  created_at: Faker::Date.between(from: '2020-11-15', to: Date.today),
  skills: "<ul>
  <li>Scrum Management</li>
  <li>Analyse</li>
  <li>Logic & organization</li>
  <li>Project Management</li>
  </ul>",
  years_experience: rand(1..5),
  company: [ssense, metrio, element_ai, ubisoft, absolunet, alithya, lightspeed, bello_solutions].sample
  )
end

2.times do
  web_designer_metrio = Job.create!(
  title: "Web Designer",
  description: "<p>We are looking for a Web Designer who will be responsible for
  creating great websites for our clients. Primary duties include conceptualizing
  and implementing creative ideas for client websites, as well as creating visual
  elements that are in line with our clients' branding. You will be working closely with
  our web development team to ensure a proper and hassle-free implementation.</p>
  <div class='responsibilities'><h2>Responsibilities:</h2>
  <ul>
  <li>Conceptualizing creative ideas with clients.</li>
  <li>Testing and improving the design of the website.</li>
  <li>Maintaining the appearance of websites by enforcing content standards.</li>
  <li>Designing visual imagery for websites and ensuring that they are in line with
  branding for clients.</li>
  <li>Working with different content management systems.</li>
  <li>Communicating design ideas using user flows, process flows, site maps and wireframes.</li>
  <li>Incorporating functionalities and features into websites.</li>
  <li>Designing sample pages including colors and fonts.</li>
  <li>Identifying areas of improvement.</li>
  <li>Preparing design plans and presenting the website structure.</li>
  </div>
  <div class='requirements'><h2>Requirements:</h2>
  </ul>
  <ul>
  <li>A relevant diploma in related field.</li>
  <li>Proficiency in graphic design software including Adobe Photoshop, Adobe Illustrator,
  and other visual design tools.</li>
  <li>Proficiency in front-end development web programming languages such as HTML and
  CSS, JQuery, and JavaScript.</li>
  <li>Good understanding of content management systems.</li>
  <li>Good understanding of search engine optimization principles.</li>
  <li>Proficient understanding of cross-browser compatibility issues.</li>
  <li>Excellent visual design skills.</li>
  <li>Up-to-date experience with international web protocols, standards,
  and technologies.</li>
  <li>Creative and open to new ideas.</li>
  <li>Adaptable and willing to learn new techniques.</li>
  <li>Excellent communication skills.</li>
  </ul>
  </div>",
  created_at: Faker::Date.between(from: '2020-11-15', to: Date.today),
  skills: "<ul>
  <li>Adobe Photoshop</li>
  <li>Adobe Illustrator</li>
  <li>HTML</li>
  <li>CSS</li>
  <li>Figma</li>
  </ul>",
  years_experience: rand(1..5),
  company: [ssense, metrio, element_ai, ubisoft, absolunet, alithya, lightspeed, bello_solutions].sample
  )
end

4.times do
  data_analyst_element_ai = Job.create!(
  title: "Data Analyst",
  description: "<p>We are looking to hire a Data Analyst to join our data team.
  You will take responsibility for managing our master data set, developing reports,
  and troubleshooting data issues. To do well in this role you need a very fine eye
  for detail, experience as a data analyst, and deep understanding of the popular
  data analysis tools and databases.</p>
  <div class='responsibilities'><h2>Responsibilities:</h2>
  <ul>
  <li>Managing master data, including creation, updates, and deletion.</li>
  <li>Managing users and user roles.</li>
  <li>Provide quality assurance of imported data, working with quality assurance
  analyst if necessary.</li>
  <li>Commissioning and decommissioning of data sets.</li>
  <li>Processing confidential data and information according to guidelines.</li>
  <li>Helping develop reports and analysis.</li>
  <li>Managing and designing the reporting environment, including data sources,
  security, and metadata.</li>
  <li>Supporting the data warehouse in identifying and revising reporting requirements.</li>
  <li>Supporting initiatives for data integrity and normalization.</li>
  <li>Assessing tests and implementing new or upgraded software and assisting with
  strategic decisions on new systems.</li>
  </div>
  <div class='requirements'><h2>Requirements:</h2>
  </ul>
  <ul>
  <li>Bachelor’s degree from an accredited university or college in computer science.</li>
  <li>Work experience as a data analyst or in related field.</li>
  <li>Ability to work with stakeholders to assess potential risks.</li>
  <li>Ability to analyze existing tools and databases and provide software solution
  recommendations.</li>
  <li>Ability to translate business requirements into non-technical, lay terms.</li>
  <li>High-level experience in methodologies and processes for managing large scale databases.</li>
  <li>Demonstrated experience in handling large data sets and relational databases.</li>
  <li>Understanding of addressing and metadata standards.</li>
  <li>High-level written and verbal communication skills.</li>
  </ul>
  </div>",
  created_at: Faker::Date.between(from: '2020-11-15', to: Date.today),
  skills: "<ul>
  <li>Big Data</li>
  <li>SQL</li>
  <li>Database</li>
  </ul>",
  years_experience: rand(1..5),
  company: [ssense, metrio, element_ai, ubisoft, absolunet, alithya, lightspeed, bello_solutions].sample
  )
end

1.times do
  project_manager = Job.create!(
  title: "Project Manager",
  description: "<p>We are looking for a Project Manager to be responsible for
  handling our company's ongoing projects. You will be working closely with your
  team members to ensure that all project requirements, deadlines, and schedules
  are on track. Responsibilities include submitting project deliverables, preparing
  status reports, and establishing effective project communication plans as well as
  the proper execution of said plans.</p>
  <div class='responsibilities'><h2>Responsibilities:</h2>
  <ul>
  <li>Coordinating with cross discipline team members to make sure that all parties
  are on track with project requirements, deadlines, and schedules.</li>
  <li>Meeting with project team members to identify and resolve issues.</li>
  <li>Submitting project deliverables and ensuring that they adhere to quality standards.</li>
  <li>Preparing status reports by gathering, analyzing and summarizing relevant information.</li>
  <li>Establishing effective project communication plans and ensuring their execution.</li>
  <li>Helping develop reports and analysis.</li>
  <li>Facilitating change requests to ensure that all parties are informed of the impacts on schedule and budget.</li>
  <li>Identifying and developing new opportunities with clients.</li>
  <li>Obtaining customer acceptance of project deliverables.</li>
  <li>ERP project oversight.</li>
  </div>
  <div class='requirements'><h2>Requirements:</h2>
  </ul>
  <ul>
  <li>A bachelor’s degree or master degree in a related field.</li>
  <li>Project Management Professional (PMP) certification is a plus.</li>
  <li>Proven experience in project management.</li>
  <li>Ability to lead project teams of various sizes and see them through to completion.</li>
  <li>Strong understanding of formal project management methodologies</li>
  <li>High-level experience in methodologies and processes for managing large scale databases.</li>
  <li>Experience as a construction project manager, IT project manager or ERP project manager.</li>
  <li>Able to complete projects in a timely manner.</li>
  <li>Budget management experience.</li>
  </ul>
  </div>",
  created_at: Faker::Date.between(from: '2020-11-15', to: Date.today),
  skills: "<ul>
  <li>Project Management</li>
  <li>Communication</li>
  <li>Summarize informations</li>
  </ul>",
  years_experience: rand(1..5),
  company: [ssense, metrio, element_ai, ubisoft, absolunet, alithya, lightspeed, bello_solutions].sample
  )
end

puts "creating contacts"

@array_contact = [*User.first.id..User.last.id]
id = @array_contact.sample
 contact_1 = Contact.create!(
  first_name: "Alexandre",
  last_name: "Coeffet",
  contact_email: "alexandre@gmail.com",
  user_id: user_1.id,
  job_title: "Product Owner",
  company: ubisoft,
  start_date: '2020-12-03',
  end_date: Date.today,
  )
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1605906080/vranbp25rvxz0qkrjyi5ar3u6ghs.jpg")
contact_1.photo.attach(io: file, filename: 'vranbp25rvxz0qkrjyi5ar3u6ghs.jpg', content_type: 'image/jpg')
contact_1.save!

contact_3 = Contact.create!(
  first_name: "Masoud",
  last_name: "Arabi",
  contact_email: "alexandre@gmail.com",
  user_id: user_3.id,
  job_title: "Full-stack developer",
  company: bello_solutions,
  start_date: '2020-12-03',
  end_date: Date.today,
  )
file = URI.open("https://res.cloudinary.com/maximelpy/image/upload/v1607110873/Company%20logo/IMG_0654_cne4gq.jpg")
contact_3.photo.attach(io: file, filename: 'IMG_0654_cne4gq.jpg', content_type: 'image/jpg')
contact_3.save!

female_counter = 0

25.times do
  id = @array_contact.sample
  fn = Faker::Name.female_first_name
  sn = Faker::Name.last_name
  contact = Contact.new(
    first_name: fn,
    last_name: sn,
    job_title: ["Product Owner", "Front-end developer", "Back-end developer",
    "Web Designer", "Project Manager", "Data Analyst", "Full-stack developer",
    "UX Designer", "Scrum Master", "Data Scientist", "Cloud Engineers"].sample,
    contact_email: "#{fn}.#{sn}@gmail.com",
    start_date: Faker::Date.between(from: '2014-09-25', to: '2018-09-25'),
    end_date: [Faker::Date.between(from: '2018-09-25', to: Date.today), Date.today].sample,
    company: [ssense, metrio, element_ai, ubisoft, absolunet, alithya, lightspeed, bello_solutions].sample,
    user_id: [id, nil].sample
  )

  file = URI.open("https://randomuser.me/api/portraits/med/women/#{female_counter}.jpg")
  contact.photo.attach(io: file, filename: "#{fn}.png", content_type: 'image/png')

  contact.save!
  number = @array_contact.index(id).to_i
  @array_contact.slice!(number)
  female_counter += 1
end


male_counter = 0

25.times do
  id = @array_contact.sample
  fn = Faker::Name.male_first_name
  sn = Faker::Name.last_name
  contact = Contact.new(
    first_name: fn,
    last_name: sn,
    job_title: ["Product Owner", "Front-end developer", "Back-end developer",
    "Web Designer", "Project Manager", "Data Analyst", "Full-stack developer",
    "UX Designer", "Scrum Master", "Data Scientist", "Cloud Engineers"].sample,
    contact_email: "#{fn}.#{sn}@gmail.com",
    start_date: Faker::Date.between(from: '2014-09-25', to: '2018-09-25'),
    end_date: [Faker::Date.between(from: '2018-09-25', to: Date.today), Date.today].sample,
    company: [ssense, metrio, element_ai, ubisoft, absolunet, alithya, lightspeed, bello_solutions].sample,
    user_id: [id, nil].sample
  )

  file = URI.open("https://randomuser.me/api/portraits/med/men/#{male_counter}.jpg")
  contact.photo.attach(io: file, filename: "#{fn}.png", content_type: 'image/png')

  contact.save!
  number = @array_contact.index(id).to_i
  @array_contact.slice!(number)
  male_counter += 1
end

puts "creating connections"


User.all.each do |user|
  array = []
  i = rand(0..49)
  25.times do
    unless array.include?(i)
      connection = Connection.new
      connection.user = user
      connection.contact = Contact.all[i]
      connection.save!
      array << i
    end
    i = rand(0..49)
  end
end

connection_masoud_alexandre = Connection.new
connection_masoud_alexandre.user = user_3
connection_masoud_alexandre.contact = contact_1
connection_masoud_alexandre.save!

connection_maxime_alexandre = Connection.new
connection_maxime_alexandre.user = user_2
connection_maxime_alexandre.contact = contact_1
connection_maxime_alexandre.save!

puts "creating priorities"

Priority.create!(
  user: user_1,
  job_search: "Product Owner",
  position: 1
  )

Priority.create!(
  user: user_1,
  job_search: "Front-end developer",
  position: 2
  )

Priority.create!(
  user: user_1,
  job_search: "Back-end developer",
  position: 3
  )
