
class Animal
  def initialize(type, height, gender, weight)
    @type = type
    @height = height
    @gender = gender
    @weight = weight
  end
end

# you would replace '[filename]' with the filename you are trying
#   to open
file_obj = {}
if ARGV[0]
  File.readlines(ARGV[0]).each_with_index do |line, i|
    # line represents the current line you are looping
    # thru in the file you've just opened
    # your logic would go here
    file_obj[i] = Animal.new(line.split(" ")[0], line.split(" ")[1], line.split(" ")[2], line.split(" ")[3])
  end

  p file_obj
end
