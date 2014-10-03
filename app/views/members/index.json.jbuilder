json.array!(@members) do |member|
  json.extract! member, :id, :group_id, :person_id, :role, :joined
  json.url member_url(member, format: :json)
end
