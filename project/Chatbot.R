songbox_chatbot <- function() {
  
  print(paste("welcome to songbox_chatbot!"))
  print("disclaimer: Every song random base on my ears experince")
  
  intro <- readline("What is your name?")
  print(paste("Hello!", intro))
  
  ask_1 <- readline("What music taste you listen?: 
                     1 pop 2 rock 3 indie 4 hip-hop 5 R&B")
  print(paste("Your music taste is awesome!"))
  
  
  ask_2 <- readline("type your music and I will reply mine..")
  my_playlist <- c("rak rak rak - trium kingdom",
                   "before dead - Big ass",
                   "Anyone before - tattoo colour",
                   "Stop - Gorn proxie",
                   "Jasmine - DPR LIVE",
                   "Pick Up YOur Phone - Hojean",
                   "Brand New - Public Library Communicate",
                   "Good Parts - LE SSERAFILM",
                   "I'm saying, Love you - Door Plant",
                   "To us - APRO, wave to eaarth, WAVY",
                   "Baby - Sipper",
                   "Your Dog Loves You - Colde, Crush",
                   "I Get By - kennytheking",
                   "I am not your ocean anymore - Yerin Beak",
                   "Let it pass - Jakob", "Nerdy Love - pH-1 ft.yerin beak",
                   "Adore - YENTED, Minchang,Gomen.", "Secondary - Polycat",
                   "Jealous King - TangBadVoice, Pun Ja", "I'd Do It Again - violette wautier",
                   "Thatthong Sound - YOUNGOHM ft.SONOFO"
  )
  print(paste(sample(my_playlist, 1)))
  
  ask_3 = readline("Are you enjoy it?:Y/N")
  if(ask_3 == "Y") {
    print("Thank to sharing music with us :0)")
  } else {
    print("Let's play again")
  }
  
  print("Enter to play again")
  print("If you want to close chatbot type.. 'exit'")
  
  while(TRUE) { 
    ask_4 = readline("Try listen this!")
    print(paste(sample(my_playlist, 1)))
   
     if(ask_4 == "exit") { 
      print("The last song is ... ,Thank to playing with us :0)")
      break
    } 
    
  }
}  
  
