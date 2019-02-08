# From https://github.com/pry/pry/wiki/FAQ#how-do-i-stop-executing-a-bindingpry-call-in-a-loop
Pry::Commands.block_command('enable-pry', 'Enable `binding.pry` feature') do
  ENV['DISABLE_PRY'] = nil
end
