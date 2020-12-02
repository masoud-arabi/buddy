class Job < ApplicationRecord
  belongs_to :company

  COLORS = {"Sustainability" => "#55B49E", "Consulting" => "#162a3b",
  "Artificial Intelligence" => "#33658A", "eCommerce" => "#88b2d3",
  "Video game" => "#9CD3C6"}

  def self.build_color_pie_chart(jobs)
    pie = jobs.map do |job|
      Job::COLORS[job[0]]
    end
    return pie
  end

  def self.build_color_area_chart(jobs)
    area = jobs.map do |job|
      Job::COLORS[job[0][0]]
    end
    return area.uniq
  end

  def self.build_color_priorities_pie_chart(jobs, colors_priorities)
    i = -1
    priorities_pie = jobs.map do |job|
      if colors_priorities.has_key?(job.first)
        colors_priorities[job.first]
      else
        i += 1
        ["#B4DAD2", "#B4DAD2", "#B4DAD2", "#B4DAD2", "#B4DAD2", "#B4DAD2"][i]
      end
    end
    return priorities_pie
  end

  def self.by_user_priorities(user)
    query = <<-SQL
      select distinct jobs.* from jobs
      join companies on jobs.company_id = companies.id
      join contacts on companies.id = contacts.company_id
      join connections on contacts.id = connections.contact_id
      join users on connections.user_id = users.id
      join priorities on users.id = priorities.user_id
      where priorities.user_id = #{user.id}
    SQL

    jobs = ActiveRecord::Base.connection.execute(query)
    # jobs_array = {}
    # jobs.to_a.each do |job|
    #   jobs_array << ["#{job["title"]}"] = "#{job["created_at"]}"
    # end
    return jobs.to_a
  end

  def self.build_color_priorities_area_chart
  end
end
["#F6AE2D", "#ED254E", "#2F4858"]
