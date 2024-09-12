import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text(getPersianDate())
                .font(.largeTitle)
                .padding()
                .background(Color.blue.opacity(0.2))
                .cornerRadius(10)
            
            Text(getCurrentTime())
                .font(.headline)
                .padding()
                .background(Color.green.opacity(0.2))
                .cornerRadius(10)
        }
        .padding()
    }
    
    func getPersianDate() -> String {
        let dateFormatter = DateFormatter()
        let calendar = Calendar(identifier: .persian)
        dateFormatter.calendar = calendar
        dateFormatter.dateStyle = .full
        dateFormatter.locale = Locale(identifier: "fa_IR")
        return dateFormatter.string(from: Date())
    }
    
    func getCurrentTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        return dateFormatter.string(from: Date())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


