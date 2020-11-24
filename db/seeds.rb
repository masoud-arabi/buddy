# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'
require 'nokogiri'

puts "Destroying companies"
Company.destroy_all if Rails.env.development?
puts "Destroying jobs"
Job.destroy_all if Rails.env.development?


ubisoft = Company.create!(
name: "Ubisoft Montréal",
industry: "Video game",
address: "5505 Boulevard Saint-Laurent, Montréal"
)

element_ai = Company.create!(
name: "Element AI",
industry: "Artificial Intelligence",
address: "6650 Rue Saint-Urbain, Montréal"
)

metrio = Company.create!(
name: "Logiciels Metrio",
industry: "Sustainability",
address: "94 Avenue Laurier Ouest, Montréal"
)

alithya = Company.create!(
name: "Alithya",
industry: "Software Consulting",
address: "1100 Boulevard Robert-Bourassa, Montréal"
)

ssense = Company.create!(
name: "SSENSE",
industry: "eCommerce",
address: "418 Rue Saint-Sulpice, Montréal"
)

absolunet = Company.create!(
name: "Absolunet",
industry: "Web Marketing",
address: "4398 Boulevard Saint-Laurent, Montréal"
)


position = 'product-owner'
url = "https://www.betterteam.com/#{position}-job-description"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

test = html_doc.search('#copyTarget > p:nth-child(2)')
binding.pry





front_end_developper_absolunet = Job.create!(
title: "Front-end developer",
description: "We are looking for a proactive programmer with a keen eye for
design for the position of Front End Developer. You will be responsible for
ensuring the alignment of web design and user experience requirements, optimizing
web pages for maximum efficiency and maintaining brand consistency across
all web pages, among other duties.
<div class='responsibilities'>Responsibility :
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
<div class='requirements'>Requirements :
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
date_created: Faker::Date.between(from: '2020-11-15', to: '2018-12-03'),
skills: "<ul>
<li>HTML</li>
<li>CSS</li>
<li>Javascript</li>
<li>jQuery</li>
<li>SEO</li>
</ul>",
company: absolunet
)

back_end_developper_ssense = Job.create!(
title: "Back-end developer",
description: "We are looking for an analytical, results-driven Back-end Developer
who will work with team members to troubleshoot and improve current back-end applications
and processes. The Back-end Developer will use his or her understanding of programming languages
and tools to analyze current codes and industry developments, formulate more efficient processes,
solve problems, and create a more seamless experience for users. You should have excellent
communication, computer, and project management skills.
<div class='responsibilities'>Responsibility :
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
<div class='requirements'>Requirements :
</ul>
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
date_created: Faker::Date.between(from: '2020-11-15', to: '2018-12-03'),
skills: "<ul>
<li>Java</li>
<li>PHP</li>
<li>Python</li>
<li>Ruby</li>
<li>C++</li>
</ul>",
company: ssense
)

# product_owner_alithya








  # Contact.create(
  #   first_name: Faker::Name.first_name
  #   last_name: Faker::Name.first_name
  #   job_title: Faker::Job.title
  #   job_description: "field: #{}Faker::Job.field, position: Faker::Job.position, type: Faker::Job.employment_type"
  #   contact_email: Faker::Internet.email(name: first_name)
  #   start_date: Faker::Date.between(from: '2012-09-25', to: '2018-09-25')
  #   end_date: Faker::Date.between(from: '2018-09-25', to: Date.today) || Date.today
  #   company_id: rand(1..10) or
  #   company: ubisoft
  #   user_id:
  # )



