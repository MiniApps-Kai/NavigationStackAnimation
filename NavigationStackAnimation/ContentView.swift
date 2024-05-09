//
//  ContentView.swift
//  NavigationStackAnimation
//
//  Created by 渡邊魁優 on 2024/05/09.
//

import SwiftUI

enum PreScanPath: Hashable {
    case step1
    case step2
    case step3
    case step4
    case video1
    case video2
    case video3
}

struct ContentView: View {
    @State private var path: [PreScanPath] = []
    var body: some View {
        NavigationStack(path: $path) {
            Button("goto step1") {
                path.append(PreScanPath.step1)
            }
            .navigationDestination(for: PreScanPath.self) { path in
                switch path {
                case .step1:
                    Step1View(path: $path)
                case .step2:
                    Step2View(path: $path)
                case .step3:
                    Step3View(path: $path)
                case .step4:
                    Step4View(path: $path)
                case .video1:
                    Video1View(path: $path)
                case .video2:
                    Video2View(path: $path)
                case .video3:
                    Video3View(path: $path)
                }
            }
        }
    }
}

struct Step1View: View {
    @Binding var path: [PreScanPath]
    var body: some View {
        VStack {
            Button("goto step2") {
                path.append(PreScanPath.step2)
            }
        }
    }
}

struct Step2View: View {
    @Binding var path: [PreScanPath]
    var body: some View {
        VStack {
            Button("goto step3") {
                path.append(PreScanPath.step3)
            }
        }
    }
}

struct Step3View: View {
    @Binding var path: [PreScanPath]
    var body: some View {
        VStack {
            Button("goto step4") {
                path.append(PreScanPath.step4)
            }
        }
    }
}

struct Step4View: View {
    @Binding var path: [PreScanPath]
    var body: some View {
        VStack {
            Button("go back step1") {
                path = [.step1]
            }
        }
    }
}

struct Video1View: View {
    @Binding var path: [PreScanPath]
    var body: some View {
        VStack {
            Button("go to step2") {
//                path.append(.step2)
            }
        }
    }
}

struct Video2View: View {
    @Binding var path: [PreScanPath]
    var body: some View {
        VStack {
            Button("go to step2") {
//                path.append(.step2)
            }
        }
    }
}

struct Video3View: View {
    @Binding var path: [PreScanPath]
    var body: some View {
        VStack {
            Button("go to step2") {
//                path = []
            }
        }
    }
}

#Preview {
    ContentView()
}
