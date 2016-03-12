json.results @teams do |team|
  json.ranking team.ranking.to_s
  json.name team.name.to_s
  json.region team.region.to_s
end
