require 'savage'

path = Savage::Path.new do |p|
  p.move_to 100, 150
  p.cubic_curve_to 100, 150, 150, 450, 450, 600
  p.cubic_curve_to 600, 400, 600, 200
  p.cubic_curve_to 450, 100, 200, 60
  p.cubic_curve_to 100, 100, 100, 150
  p.close_path
end

svg_definition = "<?xml version='1.0' standalone='no'?>
                  <!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN' 'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'>
                  <svg width='1000' height='1000' version='1.1' xmlns='http://www.w3.org/2000/svg'>
                  <path d='#{path.to_command}' fill='transparent' style='stroke:black'></path>
                  </svg>"

File.open('test.svg', 'w') { |f| f.write svg_definition }
