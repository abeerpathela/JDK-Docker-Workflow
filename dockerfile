FROM eclipse-temurin:17-jdk-alpine
# basically ek image install hojayege jisme java ka enviornment setup kiya hoga 
WORKDIR /app 
# ye container mei ek source folder bna dega jo ki hamara sara code contain karega ye he woh folder hai jo aage ja ke run hoga jab container bnega 
COPY src/main/java/Calculator.java /app/Calculator.java  
# ye jo bhi code hamara source folder mei likha tha woh app wale directory ya folder mei chala geya 
RUN javac Calculator.java 
# ya pe hum woh wali commands likhe ge jo hum run karwana chahete hai 
CMD ["java","Calculator"]
# this run the application file 
# "When this container starts, run this command automatically."
