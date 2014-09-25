force <- unique(crime$force)
asb <- c()
burglary <- c()
crim.dam.arson <- c()
drugs <- c()
pub.dis.wpns <- c()
robbery <- c()
robbery <- c()
shoplift <- c()
vehicle <- c()
other <- c()
other.theft <- c()
violence <- c()
burgl <- c()
total <- c()

for(f in force){
  asb <- c(asb, sum(crime$anti_social_behaviour[crime$force == f]))
  burgl <- c(burgl, sum(crime$burglary[crime$force == f]))
  crim.dam.arson <- c(crim.dam.arson, sum(crime$criminal_damage_and_arson[crime$force == f]))
  drugs <- c(drugs, sum(crime$drugs[crime$force == f]))
  pub.dis.wpns <- c(pub.dis.wpns, sum(crime$public_disorder_and_weapons[crime$force == f]))
  robbery <- c(robbery, sum(crime$robbery[crime$force == f]))
  shoplift <- c(shoplift, sum(crime$shoplifting[crime$force == f]))
  vehicle <- c(vehicle, sum(crime$vehicle_crime[crime$force == f]))
  other <- c(other, sum(crime$other_crime[crime$force == f]))
  other.theft <- c(other.theft, sum(crime$other_theft[crime$force == f]))
  violence <- c(violence, sum(crime$violent_crime[crime$force == f]))
  burglary <- c(burglary, sum(crime$burglary[crime$force == f]))
  total <- c(total, sum(crime$total[crime$force == f]))
}

force.counts <- data.frame(force, asb, burgl, crim.dam.arson, drugs, pub.dis.wpns, robbery, shoplift, 
                         vehicle, other, other.theft, violence, total)

force.props <- data.frame(force, asb/total, burgl/total, crim.dam.arson/total, drugs/total, pub.dis.wpns/total,
                          robbery/total, shoplift/total, vehicle/total, other/total, other.theft/total,
                          violence/total, total/total)
