$log_depth = 0

def log description, &block
  # 2 spaces indent for each level deep
  ($log_depth * 2).times do
    print " "
  end
  puts "Beginning '" + description + "'..."

  # increase the depth and run the blcok
  $log_depth = $log_depth + 1
  result = block.call.to_s

  # decrease the depth and print the result, with spacing
  $log_depth = $log_depth - 1
  ($log_depth * 2).times do
    print " "
  end
  puts "...'" + description + "' finished, returning: " + result
end

log "outer block" do

  log "some nested block" do

    log "teeny-tiny inner block" do
      "Lots of love"
    end

    5
  end

  log "another nested block" do
    "I like thai food."
  end

  false
end
