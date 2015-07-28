require 'rails_helper'

RSpec.describe Job do

  it 'can distinguish a completed task' do
    job = Job.new
    expect(job).not_to be_complete
    job.mark_complete
    expect(job).to be_complete
  end

end