Build a Quiz Management System with:
    Admin Panel
    Ability to create a quiz with:
    Quiz title
    A few questions of various types (MCQ, True/False, text, etc.)


    Public Page
    A page where a quiz can be taken by anyone
    Display results after completion (e.g., score or correct answers)


i have to build first admin panel for quiz creation and then add public page for taking quize

Backend - Ruby on Rails 8
Frontend - HTML 
Database - PostgreSQL
Admin Panel - Active Admin
Css - Tailwind

first add active admin and device to repo for login admin user 

Feature:

Admin Panel:
    Ability to create a quiz with Quiz title

    create question for quize with multiple types: (MCQ, True/False, text, etc.)

    manage mcq options and mark correct answer

Public Interface:
    View list of availble quizess
    Take a Quiz
    Submit answer
    Show score and correct answer


Database design:

Quiz
    title - string

Questions
    quiz_id
    content
    question_type
    correct_boolean_answer
    correct_text_answer

mcq_options - for store if there is four option then need to store in this table for mcq
    question_id
    text
    correct - answer - true/false

Submissions
    quiz_id
    score

submission_answers
    submission_id
    question_id
    answer