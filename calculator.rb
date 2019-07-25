require_relative '../calculator.rb'

RSpec.configure do |config|
  config.order = 'default'
end

def get_variable_from_file(file, variable)
  file_scope = binding
  file_scope.eval(File.read(file))

  begin
    return file_scope.local_variable_get(variable)
  rescue NameError
    raise NameError, "local variable #{variable} not defined in #{file}."
  end
end


get_variable_from_file('./calculator.rb', "first_number"
first_number = get_variable_from_file (.calculator.rb, "first_number")

    expect(first_number).to be_an(Integer).or be_a(Float)
    
  end
  
    it "contains a local variable called difference that is assigned to the result of subtracting first_number and second_number" do
    first_number = get_variable_from_file('./calculator.rb', "first_number")
    second_number = get_variable_from_file('./calculator.rb', "second_number")
    difference = get_variable_from_file('./calculator.rb', "difference")

    expect(difference).to eq(first_number-second_number)
  end

  it "contains a local variable called product that is assigned to the result of multiplying first_number and second_number" do
    first_number = get_variable_from_file('./calculator.rb', "first_number")
    second_number = get_variable_from_file('./calculator.rb', "second_number")
    product = get_variable_from_file('./calculator.rb', "product")

    expect(product).to eq(first_number*second_number)
  end

  it "contains a local variable called quotient that is assigned to the result of dividing first_number by second_number" do
    first_number = get_variable_from_file('./calculator.rb', "first_number")
    second_number = get_variable_from_file('./calculator.rb', "second_number")
    quotient = get_variable_from_file('./calculator.rb', "quotient")

    expect(quotient).to eq(first_number/second_number)
  end
end
