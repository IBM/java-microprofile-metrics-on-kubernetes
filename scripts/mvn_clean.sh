function mvn_clean() {
  #statements
  cd "$1" || return
  mvn clean package -DskipTests
  cd ..
}

mvn_clean sample.microservices.web-app
mvn_clean sample.microservices.schedule
mvn_clean sample.microservices.speaker
mvn_clean sample.microservices.session
mvn_clean sample.microservices.vote
