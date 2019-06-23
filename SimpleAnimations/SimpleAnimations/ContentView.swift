//
//  ContentView.swift
//  SimpleAnimations
//
//  Created by Sud on 6/22/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var isArrowPointingLeft: Bool = false
    @State private var isHamburgerShowing: Bool = true
    @State private var right: Bool = true
    @State private var isCheckmarkShowing: Bool = true
    @State private var isCelsius: Bool = true
    @State private var startAnimation: Bool = false
    private var degree: Double = 180
    
    var body: some View {
        NavigationView {
            Form {
                Section(footer: Text("Tap to see animation")) {
                    HStack {
                        Text("Basic")
                        Spacer()
                        Button(action: {
                            self.isArrowPointingLeft.toggle()
                        }) {
                            Image("LeftArrow")
                                .imageScale(.small)
                                .rotationEffect(.degrees(isArrowPointingLeft ? 0 : 180))
                                .padding()
                                .animation(.basic())
                        }
                    }
                    HStack {
                        Text("Spring")
                        Spacer()
                        Button(action: {
                            self.isArrowPointingLeft.toggle()
                        }) {
                            Image("LeftArrow")
                                .imageScale(.small)
                                .rotationEffect(.degrees(isArrowPointingLeft ? 0 : 180))
                                .padding()
                                .animation(.spring())
                        }
                    }
                    HStack {
                        Text("Fluid Spring")
                        Spacer()
                        Button(action: {
                            self.isArrowPointingLeft.toggle()
                        }) {
                            Image("LeftArrow")
                                .imageScale(.small)
                                .rotationEffect(.degrees(isArrowPointingLeft ? 0 : 180))
                                .padding()
                                .animation(.fluidSpring())
                        }
                    }
                    HStack {
                        Text("Hamburger to Cross")
                        Spacer()
                        Button(action: {
                            self.isHamburgerShowing.toggle()
                        }) {
                            Image(isHamburgerShowing ? "Hamburger3" : "Cancel")
                                .imageScale(.small)
                                .rotationEffect(.degrees(isHamburgerShowing ? 0 : 180))
                                .padding()
                                .animation(.fluidSpring())
                        }
                    }
                    HStack {
                        Text("Right & Wrong")
                        Spacer()
                        Button(action: {
                            self.right.toggle()
                        }) {
                            Image(right ? "Right" : "Wrong")
                                .imageScale(.small)
                                .rotationEffect(.degrees(right ? 0 : 180))
                                .padding()
                                .animation(.spring())
                        }
                    }
                    HStack {
                        Text("Checkmark to Close")
                        Spacer()
                        Button(action: {
                            self.isCheckmarkShowing.toggle()
                        }) {
                            Image(isCheckmarkShowing ? "Checkmark" : "Cancel")
                                .imageScale(.small)
                                .rotationEffect(.degrees(isCheckmarkShowing ? 0 : 180))
                                .padding()
                                .animation(Animation.fluidSpring())
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Simple Animations"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
