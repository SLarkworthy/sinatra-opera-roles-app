class Role < ActiveRecord::Base
    belongs_to :user

    def role_completed?
        [self.researched?, self.translated?, self.listened?, self.learned?, self.coached?, self.memorized?].all?
    end

end
