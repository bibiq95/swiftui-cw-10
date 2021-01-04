//
//  ContentView.swift
//  cw day6
//
//  Created by alqattan on 04/01/2021.
//

import SwiftUI


enum moodtype
{
   case  ifeelsad  , ifeelfine , ifeelmeh , ifeelhappy
}


struct ContentView: View {
     @State var mood : String = ""
    var body: some View {
        
        
        VStack{
            
            Text("mood check")
                .bold()
            .padding()
            
            
            Text("\(mood)")
         .padding()
            Spacer()
            
            HStack{
                Text("😔").onTapGesture{
                    mood = yourmood(mood: .ifeelsad)
                    
                }
            
                
                    Text("😇").onTapGesture {
                        mood = yourmood(mood: .ifeelfine)
                    }
                
        
                        Text("😕").onTapGesture {
                            mood = yourmood(mood: .ifeelmeh)
                        }
                           
                            Text("😁").onTapGesture {
                                mood = yourmood(mood: .ifeelhappy)
                            }
            
                        
                       
                
            }
            Spacer()
        }
        
            
    }
    
    
    
    
    
func yourmood (mood: moodtype ) -> String {
    if mood == .ifeelsad  {
    return " i feel sad"
        
    }
        if mood == .ifeelfine {
return " i feel fine"
  
}
        if mood == .ifeelmeh
{
return " i feel meh"
  
}
        if mood == .ifeelhappy
{
return " i feel happy "
  
}
    return ""
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    }
