require 'rails_sandbox/version'

module RailsSandbox

  refine ::ActiveRecord::Base do
    def sandbox
      result = nil
      transaction do
        result = yield if block_given
        raise ActiveRecord::Rollback
      end
      result
    end
  end

end
