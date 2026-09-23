import Foundation

enum BugReportValidator {
    static func isValid(_ draft: BugReportDraft) -> Bool {
        !draft.title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
