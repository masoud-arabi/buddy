class Job < ApplicationRecord
  belongs_to :company

  COLORS = {"eCommerce" => "#55B49E", "Sustainability" => "#162a3b", "Artificial Intelligence" => "#33658A", "Software Consulting" => "#88b2d3", "Video game" => "#9CD3C6"}

  def self.build_color_pie_chart(jobs)
    return jobs.map do |job|
      Job::COLORS[job[0]]
    end
  end

  def self.build_color_area_chart()
  end

  def self.by_user_priorities(user)
    # user == current_user
    query = <<-SQL
      SELECT * FROM jobs
      WHERE id = ?
    SQL

    jobs = ActiveRecord::Base.connection.execute(query, 1)

    return jobs
  end
end
