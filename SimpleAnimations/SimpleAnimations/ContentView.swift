//
//  ContentView.swift
//  SimpleAnimations
//
//  Created by Sud on 6/22/19.
//  Copyright © 2019 MyCompany. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var basicAnimation = false
    @State private var springAnimation = false
    @State private var isHamburgerShowing = true
    @State private var right = true
    @State private var isCheckmarkShowing = true
    @State private var isCelsius = true
    @State private var startAnimation = false
    private var degree: Double = 180
    
    var body: some View {
        NavigationView {
            List {
                Section(footer: Text("Tap to see animation")) {
                    HStack {
                        Text("Basic")
                        Spacer()
                        Button(action: {
                            self.basicAnimation.toggle()
                        }) {
                            Image("LeftArrow")
                                .imageScale(.small)
                                .rotationEffect(.degrees(basicAnimation ? 0 : 180))
                                .padding()
                                .animation(.default)
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.basicAnimation.toggle()
                    }
                    HStack {
                        Text("Spring")
                        Spacer()
                        Button(action: {
                            self.springAnimation.toggle()
                        }) {
                            Image("LeftArrow")
                                .imageScale(.small)
                                .rotationEffect(.degrees(springAnimation ? 0 : 180))
                                .padding()
                                .animation(.spring(response: 0.5, dampingFraction: 0.3, blendDuration: 0.2))
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.springAnimation.toggle()
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
                                .animation(.spring())
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.isHamburgerShowing.toggle()
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
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.right.toggle()
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
                                .animation(.spring())
                        }
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.isCheckmarkShowing.toggle()
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .buttonStyle(PlainButtonStyle())
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
