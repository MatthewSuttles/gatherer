require 'rails_helper'

RSpec.describe Project do

  describe 'initialization' do
    let(:project){ Project.new }
    let(:job){ Job.new }

    it 'considers a project with no jobs to be done' do
      expect(project).to be_done
    end

    it 'knows that a project with an incomplete jobs is not done' do
      project.jobs << job
      expect(project).not_to be_done
    end
  end

  describe 'estimates' do
    let(:project){Project.new}
    let(:done){Job.new(size: 2, completed: true)}
    let(:small_not_done){Job.new(size:1)}
    let(:large_not_done){Job.new(size:4)}

    before(:example) do
      project.jobs = [done, small_not_done, large_not_done]
    end

    it 'can calulate total size' do
      expect(project.total_size).to eq(7)
    end

    it 'can calculate remaning size' do
      expect(project.remaining_size).to eq(5)
    end
  end

end
