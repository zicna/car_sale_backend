class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :comment, class_name: "comment", foreign_key: "comment_id"
end
