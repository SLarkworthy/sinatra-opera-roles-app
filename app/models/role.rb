class Role < ActiveRecord::Base
    belongs_to :user

    TASKS = ["researched", "translated", "listened", "learned", "coached", "memorized"]

    def self.tasks
        TASKS
    end

end
