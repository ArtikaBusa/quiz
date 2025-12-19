puts "🌱 Starting Seeds..."

# ---------------------------
# Admin User
# ---------------------------
AdminUser.find_or_create_by!(email: "admin@example.com") do |admin|
  admin.password = "password123"
  admin.password_confirmation = "password123"
end

puts "✅ Admin user created"

# ===========================
# QUIZ 1: Ruby Basics
# ===========================
quiz1 = Quiz.find_or_create_by!(title: "Ruby Basics")

q1_1 = quiz1.questions.create!(
  content: "Which method is used to output text in Ruby?",
  question_type: :mcq
)

q1_1.mcq_options.create!([
  { text: "puts", correct: true },
  { text: "print()", correct: false },
  { text: "echo", correct: false },
  { text: "console.log", correct: false }
])

q1_2 = quiz1.questions.create!(
  content: "Ruby is an interpreted language?",
  question_type: :boolean,
  correct_boolean_answer: true
)

q1_3 = quiz1.questions.create!(
  content: "What does IRB stand for?",
  question_type: :text,
  correct_text_answer: "Interactive Ruby"
)

submission1 = quiz1.submissions.create!(score: 3)
submission1.submission_answers.create!([
  { question: q1_1, answer: "puts" },
  { question: q1_2, answer: "true" },
  { question: q1_3, answer: "Interactive Ruby" }
])

puts "✅ Ruby Basics quiz created"

# ===========================
# QUIZ 2: Ruby on Rails
# ===========================
quiz2 = Quiz.find_or_create_by!(title: "Ruby on Rails")

q2_1 = quiz2.questions.create!(
  content: "Which command creates a new Rails project?",
  question_type: :mcq
)

q2_1.mcq_options.create!([
  { text: "rails new app_name", correct: true },
  { text: "rails generate app", correct: false },
  { text: "rails start app", correct: false },
  { text: "rails create project", correct: false }
])

q2_2 = quiz2.questions.create!(
  content: "Rails follows MVC architecture?",
  question_type: :boolean,
  correct_boolean_answer: true
)

q2_3 = quiz2.questions.create!(
  content: "Which file defines database configuration in Rails?",
  question_type: :text,
  correct_text_answer: "database.yml"
)

submission2 = quiz2.submissions.create!(score: 2)
submission2.submission_answers.create!([
  { question: q2_1, answer: "rails new app_name" },
  { question: q2_2, answer: "true" },
  { question: q2_3, answer: "database.yml" }
])

puts "✅ Ruby on Rails quiz created"

# ===========================
# QUIZ 3: Web Development
# ===========================
quiz3 = Quiz.find_or_create_by!(title: "Web Development Fundamentals")

q3_1 = quiz3.questions.create!(
  content: "Which HTML tag is used for the largest heading?",
  question_type: :mcq
)

q3_1.mcq_options.create!([
  { text: "<h1>", correct: true },
  { text: "<head>", correct: false },
  { text: "<h6>", correct: false },
  { text: "<title>", correct: false }
])

q3_2 = quiz3.questions.create!(
  content: "CSS stands for Cascading Style Sheets?",
  question_type: :boolean,
  correct_boolean_answer: true
)

q3_3 = quiz3.questions.create!(
  content: "Name the protocol used to load websites.",
  question_type: :text,
  correct_text_answer: "HTTP"
)

submission3 = quiz3.submissions.create!(score: 3)
submission3.submission_answers.create!([
  { question: q3_1, answer: "<h1>" },
  { question: q3_2, answer: "true" },
  { question: q3_3, answer: "HTTP" }
])

puts "✅ Web Development quiz created"

puts "🎉 All seeds created successfully!"
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?