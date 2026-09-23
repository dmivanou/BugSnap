import SwiftUI

struct BugReportFormView: View {
    @State private var draft = BugReportDraft()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Основное") {
                    TextField("Название", text: $draft.title)
                }
                Section("Шаги воспроизведения") {
                    TextEditor(text: $draft.stepsToReproduce)
                        .frame(minHeight: 120)
                }
                Section("Результаты") {
                    VStack(alignment: .leading) {
                        Text("Фактический результат")
                            .font(.subheadline)
                        
                        TextEditor(text: $draft.actualResult)
                            .frame(minHeight: 100)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Ожидаемый результат")
                            .font(.subheadline)
                        
                        TextEditor(text: $draft.expectedResult)
                            .frame(minHeight: 100)
                    }
                }
            }
            .safeAreaInset(edge: .bottom) {
                Button("Сохранить") {
                    print(draft)
                }
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .padding()
                .background(.bar)
                .disabled(!BugReportValidator.isValid(draft))
            }
            .navigationTitle("Новый баг-репорт")
        }
    }
}
