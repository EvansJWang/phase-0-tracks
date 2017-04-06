
military = {
  "Army" => ["Soldiers", "Sergeants", "Colonels"],
  "Navy" => ["Sailors", "Seamen", "Ships"],
  "Marines" => ["Marine","Jarhead"] ,
  "Coast Guard" => ["Coasties", "guardians", "helicopters"],
  "Airforce" => ["Airmen","Planes"]
}
  
p military["Army"]
p military["Marines"][1].length 
p military["Coast Guard"].last
p military["Army"] << "Tanks"
p military["Army"][2] = "Generals"
