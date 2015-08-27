class Workshop
  attr_reader :name, :about, :coaches, :students
  def initialize(date, venue)
    @date = date
    @venue = venue
    @coaches = []
    @students = []
  end

  def add_participant(member)
    if member.class == Student
      @students << member
    elsif member.class == Coach
      @coaches << member
    end
  end

  def print_details
    print_workshop
    print_students
    print_coaches
  end

private

  def print_workshop
    puts "Workshop - #{@date} - Venue: #{@venue}"
    puts
  end

  def print_students
     puts "Students"
    @students.each_with_index do |student, i|
      puts "#{i+1}. #{student.name} - #{student.about}"
    end
    puts
  end

  def print_coaches
    puts "Coaches"
    @coaches.each_with_index do |coach, i|
      puts "#{i+1}. #{coach.name} - #{coach.skills.join ", "}\n   #{coach.bio}"
    end
  end
end

class Student
  attr_reader :name, :about
  def initialize(name, about)
    @name = name
    @about = about
  end
end

class Coach
  attr_reader :name, :bio, :skills
  def initialize(name, bio)
    @name = name
    @bio = bio
    @skills = []
  end

  def add_skill(skill)
    @skills << skill
  end
end


workshop = Workshop.new("12/03/2014", "Shutl")

jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
lena = Student.new("Lena Smith", "I am really excited about learning to program!")
vicky = Coach.new("Vicky Ruby", "I want to help people learn coding.")
vicky.add_skill("HTML")
vicky.add_skill("JavaScript")
nicole = Coach.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
nicole.add_skill("Ruby")

workshop.add_participant(jane)
workshop.add_participant(lena)
workshop.add_participant(vicky)
workshop.add_participant(nicole)
workshop.print_details





