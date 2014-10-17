require 'active_record'

require 'rails_sandbox/version'

class ActiveRecord::Base
  def self.sandbox
    result = nil
    self.transaction do
      result = yield if block_given?
      raise ActiveRecord::Rollback
    end
    result
  end
end
