//
//  ContentView.swift
//  GenericFramework
//
//  Created by Avinash Ravipati on 11/12/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var showGreetingScreen = true
        var body: some View {
            if !UserDefaults.standard.bool(forKey: "HasShownGreetingScreen_for_app_GenericFramework") &&
                self.showGreetingScreen
            {
                GreetingScreen(showGreetingScreen: $showGreetingScreen)
            } else {
                MainScreen()
            }
        }
    }


struct GreetingScreen: View {
    @Binding var showGreetingScreen: Bool
    @State private var count = 1
    var titlesAndSubtitles: [(title: String, subtitle: String)] = [("Discover Inner Peace", "Experience Tranquility Through Meditation"),("Stress Relief Anytime, Anywhere","Find Calmness in the Midst of Chaos"),("Guided Meditations for All","Journey to Mindfulness with Expert Instructors") ]

    var body: some View {
        GeometryReader { geometry in
            VStack {
                    ZStack {
                        Image("Background_image\(count)")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(22)
                            .clipped()
                    
                        HStack{
                           Spacer()
                        
                        VStack {
                           
                            Button(action: {
                                UserDefaults.standard.set(true, forKey: "HasShownGreetingScreen_for_app_GenericFramework")
                                self.showGreetingScreen = false
                            }, label: {
                                Text("Skip")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)

                            })
                           
                          
                            Spacer() // Pushes the button to the top
                            }
                        }
                        .padding(.horizontal, 100)
                        .padding(.vertical, 50)
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 300)

                Spacer()
                if self.count <= 3 {
                    Text(titlesAndSubtitles[count-1].title)
                        .font(.title2)
                    Text(titlesAndSubtitles[count-1].subtitle)
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                HStack(spacing:5){
                    
                    Circle()
                        .frame(width: 5,  height: 5)
                        .foregroundColor(count==1 ? .black : .gray)
                    Circle()
                        .frame(width: 5 , height: 5)
                        .foregroundColor(count==2 ? .black : .gray)
                    Circle()
                        .frame(width: 5 , height: 5)
                        .foregroundColor(count==3 ? .black : .gray)
                }
                    
                Spacer()
                
                    Button(action: {
                        self.count += 1
                        if self.count > 3 {
                            UserDefaults.standard.set(true, forKey: "HasShownGreetingScreen_for_app_GenericFramework")
                            self.showGreetingScreen = false
                        }
                    }, label: {
                        
                        Text(self.count == 3 ? "Get Started" : "Continue")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color.blue)
                            )
                    })
                    .padding(.bottom, 40) // Adjust the spacing from the wave shape as needed

               
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}


    struct MainScreen: View {
        var body: some View {
            Text("Main Content")
        }
    }

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
