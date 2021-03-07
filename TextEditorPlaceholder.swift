struct NoteView: View {

    @Binding var note: String
    @State private var placeholderText = "Notes"

    var body: some View {
        ZStack {
            if self.note.isEmpty {
                TextEditor(text:$placeholderText)
                    .font(.body)
                    .disabled(true)
            }
            ZStack (alignment: .topLeading) {
                TextEditor(text: $note)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                Text(note)
                    .font(.body)
                    .padding(.all, 8)
                    .lineLimit(nil)
                    .opacity(0)
            }
        }.onAppear(perform: {
            UITextView.appearance().backgroundColor = .clear
        })
        .padding(0)
        .foregroundColor(.secondary)
    }
}
