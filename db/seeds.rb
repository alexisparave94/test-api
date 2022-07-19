# rappi = Company.create(name: "Rappi")
# rappi.logo.attach(io: File.open("db/images/01_rappi_logo_100x100.png"), filename: "01_rappi_logo_100x100.png")
mef = Company.create(name: "Mef")
mef.logo.attach(io: File.open("db/db_companylogo/04_mef_logo_100x100.jpg"), filename: "04_mef_logo_100x100.jpg")

bcp = Company.create(name: "BCP")
bcp.logo.attach(io: File.open("db/db_companylogo/10_bcp_logo_100x100.png"), filename: "10_bcp_logo_100x100.png")