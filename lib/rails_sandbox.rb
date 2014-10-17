require 'active_record'

require 'rails_sandbox/version'

module RailsSandbox

  refine ActiveRecord::Base do
    def self.sandbox
      result = nil
      self.transaction do
        result = yield if block_given?
        raise ActiveRecord::Rollback
      end
      result
    end
  end

end
