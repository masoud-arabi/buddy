class IdeasController < ApplicationController
  # def match_priorities_jobs?(priority_job_search, job_title)
  #   priority_job_search == job_title
  # end

  # def industry_present_job?(priority_industry, company_industry)
  #   priority_industry == company_industry
  # end

  def map
    @companies = Company.all
    @user = current_user
    @jobs = Job.all
  end
end

    # @ideas_hash = {}
    # @ideas_array = []
    # @user.priorities.each do |priority|
    #   @companies.each do |company|
    #     if match_priorities_jobs?(company.industry, priority.industry)
    #       @ideas_array.push(priority.industry)
    #     end
    #     @ideas.store("#{priority.industry}", @ideas_array[priority.industry].count)
    #   end
    # end
    # @ideas_hash
    # raise
