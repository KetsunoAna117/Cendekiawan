//
//  QuizResultView.swift
//  Cendekiawan
//
//  Created by Bryan Vernanda on 19/06/24.
//

import SwiftUI

struct QuizResultView: View {
    @ObservedObject var vm: QuizViewModel
    var body: some View {
        ZStack {
            VStack{
                Image("QuizResult")
                Spacer()
            }
            VStack(spacing: 40){
                VStack(spacing: 32) {
                    Image("ResultViewIllustration")
                    VStack (spacing: 24){
                        VStack{
                            Text("Wah kamu jago sekali!")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.cerdikiawanOrange)
                            
                            Text("Selamat telah menyelesaikan misi pertama!")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.cerdikiawanBlueTua)
                            
                            HStack {
                                VStack {
                                    Image("ResultViewExp")
                                    Text("+ \(vm.quizExperienceGain) Exp")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                }
                            }
                        }
                }
                    
                    Button {
                        
                    } label: {
                        SubmitButton(text: "Selesai", color: Color.cerdikiawanOrange)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    QuizResultView(vm: QuizViewModel(quizRightAnswer: 10, quizExperienceGain: 100, quizTrophyGain: Trophy(value: 0), listQuizQuestion: []))
}
