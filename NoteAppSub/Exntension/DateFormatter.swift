import Foundation

extension DateFormatter{
    static let MemoDateFormatter: DateFormatter = {
        let date = DateFormatter()
        date.dateStyle = .long
        date.timeStyle = .none
        date.locale = Locale(identifier: "Ko-kr")
        return date
    }()
}
    extension DateFormatter: ObservableObject {
        
    }

