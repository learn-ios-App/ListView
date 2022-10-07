import SwiftUI

struct Animal: Identifiable {
    let id = UUID()
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct ContentView: View {
    var animals: [Animal] = [
        Animal(name: "ライオン"),
        Animal(name: "チーター"),
        Animal(name: "ジャッカル")
    ]
    
    var animals2: [Animal] = [
        Animal(name: "シマウマ"),
        Animal(name: "トムソンガゼル"),
        Animal(name: "インパラ")
        
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("肉食動物")) {
                    ForEach(animals) { animal in
                        Text(animal.name)
                    }
                }
                Section(header: Text("草食動物")) {
                    ForEach(animals2) { animal in
                        Text(animal.name)
                    }
                }
            }
            .navigationTitle("サバンナの動物達")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
