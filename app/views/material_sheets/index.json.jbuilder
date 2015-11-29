json.array!(@material_sheets) do |material_sheet|
  json.extract! material_sheet, :id, :material_id, :cantidad, :sheet_id
  json.url material_sheet_url(material_sheet, format: :json)
end
