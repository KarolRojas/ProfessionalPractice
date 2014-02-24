json.array!(@project_profiles) do |project_profile|
  json.extract! project_profile, :id, :name, :validity, :region, :institution_name, :description, :objectives, :scale, :context, :disciplines
  json.url project_profile_url(project_profile, format: :json)
end
