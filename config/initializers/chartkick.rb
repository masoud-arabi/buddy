def industry_present_job?(priority_industry, company_industry)
  priority_industry == company_industry
end

# def color_method
#   colors = []
#   @user.priorities.each do |priority|
#     @companies.each do |company|
#       if industry_present_job?(company.industry, priority.industry)
#         colors.push("#F6AE2D")
#       elsif
#     end
#   end
# end
# @companies = Company.all
# @user = current_user


# Chartkick.options = {
#   height: "400px",
#   colors: color_method
# }

# <%= pie_chart [
#   {
#     name: "bad",
#     @user.ratings.group(:score).where(score: "bad").count
#   },
#   {
#     name: "good",
#     @user.ratings.group(:score).where(score: "good").count
#   },
#   {
#     name: "offered",
#     @user.ratings.group(:score).where(score: "offerred").count
#   },
# ],
# colors: [ '#111', '#222', '#333' ]
# %>


# Chartkick.options[:html] = '<div id="%{id}" style="height: %{height};">Loading...</div>'

# Chartkick.options[:content_for] = :charts_js


# $brand-color: #55B49E;

# $dark-blue: #2F4858;
# $light-blue: #33658A;
# $light-orange: #F6AE2D;
# $ruby: #ED254E;
# $light-grey: #F3F4F5;

# ["#F6AE2D", "#ED254E", "#2F4858", "#55B49E"]
