WeighIn.destroy_all
Participant.destroy_all
Team.destroy_all

teams = Team.create([
  {
  "name": "Mighty Mangos"
},{
  "name": "Raging Raspberries"
},{
  "name": "Blazing Blueberries"
}
  ])

  participants = Participant.create!([
   {
     "email": "testemail1@waylow.org",
     "name_first": "VALERIE",
     "name_last": "HANNA",
     "phone": "443-404-9272",
     "team_id": Team.first.id
   }
  ])

weigh_ins = WeighIn.create!([
 {
   "participant_id": Participant.first.id,
   "team_id": Team.first.id,
   "weight_begin": 218.9,
   "weight_1": 220,
   "weight_2": 220,
   "weight_3": 218.9,
   "weight_4": 223.3,
   "weight_5": 223.3,
   "weight_6": 220,
   "weight_7": 220,
   "weight_8": 220,
   "weight_9": 220,
   "weight_10": 220,
   "weight_end": 220
 }
])
