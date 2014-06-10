def log description, &block
  puts "Beginning '" + description + "'..."
  puts "...'" + description + "' finished, returning: " + block.call.to_s
end

log "outer block" do

  log "some nested block" do
    5
  end

  log "another nested block" do
    "I like thai food."
  end

  false
end
