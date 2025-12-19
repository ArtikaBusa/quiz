🧠 Quiz Management System

A full-stack Quiz Management System built with Ruby on Rails 8, featuring an Admin Panel for quiz creation and a Public Interface for users to take quizzes and view results.

🚀 Tech Stack

Backend: Ruby on Rails 8

Frontend: HTML (ERB templates)

Database: PostgreSQL

Admin Panel: ActiveAdmin

Authentication: Devise

Styling: Tailwind CSS

✨ Features
🔐 Admin Panel (ActiveAdmin)

Admins can manage quizzes and questions through a secure admin dashboard.

Capabilities:

Admin authentication (Devise)

Create and manage quizzes

Add questions to quizzes

Support multiple question types:

Multiple Choice (MCQ)

True / False

Text-based answers

Manage MCQ options

Mark correct answers for evaluation

🌐 Public Interface

Users can take quizzes without authentication.

Capabilities:

View list of available quizzes

Take a quiz

Submit answers

View results on completion:

Total score

Correct and incorrect answers

🗂 Database Design
Quiz
Column	Type
title	string
Question
Column	Type
quiz_id	reference
content	text
question_type	integer (enum)
correct_boolean_answer	boolean
correct_text_answer	text
MCQ Option
Column	Type
question_id	reference
text	string
correct	boolean
Submission
Column	Type
quiz_id	reference
score	integer
Submission Answer
Column	Type
submission_id	reference
question_id	reference
answer	text
🧩 Question Types Supported

MCQ

Stored via mcq_options

One option marked as correct

True / False

Uses correct_boolean_answer

Text Answer

Uses correct_text_answer

🔄 Application Flow
Admin Flow

Admin logs in via ActiveAdmin

Creates a quiz

Adds questions with different types

Sets correct answers

User Flow

User visits quiz listing page

Selects a quiz

Answers questions

Submits quiz

Sees score and correct answers on the same page

🛠 Setup Instructions
# Clone repository
git clone <repo-url>
cd quiz-management-system

# Install dependencies
bundle install

# Setup database
rails db:create
rails db:migrate
rails db:seed

# Start server
rails server

🔑 Admin Login

After seeding:

URL: /admin

Email: admin@example.com

Password: password123

📌 Future Enhancements (Optional)

User authentication for quiz attempts

Timer-based quizzes

Quiz categories & difficulty levels

Result analytics in admin panel

Export quiz results