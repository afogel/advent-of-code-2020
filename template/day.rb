def read_lines(filename = File.expand_path("input.txt", __dir__))
  File.readlines(filename)
end

def parse_input(input)
  ## PARSING LOGIC HERE ##
end

### CODE HERE ###

return unless $PROGRAM_NAME == __FILE__

parsed_input = parse_input(read_lines)

### RUN STUFF HERE ###