class PossibleEmails

  attr_accessor :fname, :lname, :domain, :name

  def initialize(name, domain)
    @name = name
    @fname = name.downcase.split(" ")[0]
    @lname = name.downcase.split(" ")[1]
    @domain = "@" + domain
  end

  def first_name_dot_last_name
    @fname + "." + @lname + @domain
  end

  def first_name_dot_last_initial
    @fname + "." + @lname[0] + @domain
  end

  def first_initial_dot_last_name
    @fname[0] + "." + @lname + @domain
  end

  def first_initial_dot_last_initial
    @fname[0] + "." + @lname[0] + @domain
  end

  def predict
    if domain == "@ironthrone.com"
      puts "The possible email address for #{name} is #{first_name_dot_last_name}."
    elsif domain == "@direwolves.com"
      puts "The possible email addresses for #{name} are #{first_name_dot_last_initial} or #{first_initial_dot_last_name}."
    elsif domain == "@littefinger.com"
      puts "The possible email address for #{name} is #{first_initial_dot_last_initial}."
    else
      puts "The possible email addresses for #{name} are #{first_name_dot_last_name}, #{first_name_dot_last_initial}, #{first_initial_dot_last_initial}, or #{first_initial_dot_last_name}."
    end
  end

end

