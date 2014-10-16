require_relative 'rails_sandbox/version'
require 'active_record'

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
