result = catch :abort do
  probes.each do |probe|
    while sample = probe.get_sample
      result = sample.process

      throw :abort, result.message if result.code != :ok

      puts result.message
      sample.store
    end
  end
  "All smaples processed"
end

# If the throw isnt triggered then catch returns the last expression in it's block (eg, the string at the end, 'all
# samples processed' in this case)

# If the throw is triggered, the corresponding catch block is terminated. If one of the samples fail to process then
# it outputs the reason for its failure which was provided as the 2nd argument to throw. 

# The argument of catch of the first argument of throw must match for it to work (eg, abort here but any object
# could be used)
puts result