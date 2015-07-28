class Job
  attr_accessor :completed, :size

  def initialize(options = {})
    @complete = options[:completed]
    @size = options[:size]
  end

  def mark_complete
    @complete = true
  end

  def complete?
    @complete
  end
end