require 'savage'

path = Savage::Path.new do |p|
  p.move_to 0, 0
  p.line_to 112, 317
  p.close_path
end

svg_definition = "<?xml version='1.0' standalone='no'?>
                  <!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN' 'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'>
                  <svg width='100' height='100' version='1.1' xmlns='http://www.w3.org/2000/svg'>
                  <path d='#{path.to_command}' style='stroke:black'></path>
                  </svg>"

File.open('test.svg', 'w') { |f| f.write svg_definition }
