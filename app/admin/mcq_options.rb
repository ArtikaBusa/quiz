ActiveAdmin.register McqOption do
  permit_params :question_id, :text, :correct
  config.filters = false
  
end
