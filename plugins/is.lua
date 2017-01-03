local function run(msg, matches)
  local htp = http.request('http://umbrella.shayan-soft.ir/ip')
  local data = json:decode(htp)
  print(data)
  return data.poem
end
return {
  patterns = {
    "^[!/#]is$"
  },
  run = run
}
