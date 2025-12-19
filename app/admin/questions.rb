ActiveAdmin.register Question do
  permit_params :quiz_id, :content, :question_type, :correct_boolean_answer, :correct_text_answer
  config.filters = false
end
