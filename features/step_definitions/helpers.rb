def wait_for(&block)
  timeout = 10
  begin_time = Time.now
  while (Time.now - begin_time) < timeout
    return true if yield rescue false
    sleep 0.25
  end
  raise "Timeout exceeded (after #{timeout} sec)"
end
