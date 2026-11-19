# Utility check for easy testing
if ENV['FAIL_DANGER']
    fail("Marking as failed: FAIL_DANGER env set")
end

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 500