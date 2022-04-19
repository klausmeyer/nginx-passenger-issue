vars_to_test = %w(
  HTTP_SECURITY_AAAAA
  HTTP_SECURITY_BBBBB
  HTTP_SECURITY_LEVEL
)

app = Proc.new do |env|
  response = ["ENVs and their values:\n\n"]

  vars_to_test.each do |var|
    response << "#{var}: #{env[var]}\n"
  end

  ["200", {"Content-Type" => "text/plain"}, response]
end

run app
