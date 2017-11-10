# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Make NONE entries to enable immediate addition of new records

none_acmm = AcMakeModel.create(abbreviation: "NONE", manufacturer: "NONE", model: "NONE", family: "NONE")
none_ac = Aircraft.create(n_number: "NONE", serial_number: "", ac_make_model_id: none_acmm.id, 
                          notes: "Used on engines or logbook entries with no applicable aircraft.")
none_tech = Technician.create(name: "NONE", email: "none@none.com", password: BCrypt::Password.create('test123'))
none_engine = Engine.create(name:"NONE", serial_number:"NONE", model:"NONE", manufacturer:"NONE", aircraft_id:none_ac.id)
ns_supervisor = Supervisor.create(name:"Not Specified")
na_supervisor = Supervisor.create(name:"N/A")
ns_client = Client.create(company_name: "Not Specified", contact_name: "Not Specified")
ns_location = WorkLocation.create(description: "Not Specified")
none_cc = CustomCat.create(name:"NONE")
