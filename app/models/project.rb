class Project
  attr_accessor :jobs
  def initialize
    @jobs = []
  end

  def incomplete_tasks
    @jobs.reject(&:complete?)
  end

  def done?
    incomplete_tasks.blank?
  end

  def total_size
    @jobs.sum(&:size)
  end

  def remaining_size
    incomplete_tasks.sum(&:size)
  end


end
