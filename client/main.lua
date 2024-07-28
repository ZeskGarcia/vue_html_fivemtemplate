function sendNui(action, data)
  local payload = {}
  payload['type'] = tostring(action)
  if (data and type(data) == "table") then
    for k,v in pairs(data) do
      payload[k] = v
    end
  end
  SendNUIMessage(payload)
end

-- How to Use
-- Example: sendNui('setConfig', { url = "https://google.com" })
