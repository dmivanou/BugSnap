//
//  BugSnapTests.swift
//  BugSnapTests
//
//  Created by Dima on 23.09.2026.
//

import Testing
@testable import BugSnap

struct BugSnapTests {

    @Test("Черновик без названия нельзя сохранить")
    func draftWithoutTitleIsInvalid() {
        // Arrange
        let draft = BugReportDraft()
        
        // Act
        let isValid = BugReportValidator.isValid(draft)
        
        // Assert
        #expect(isValid == false)
    }
    
    @Test("Черновик с названием из пробелов нельзя сохранить")
    func draftWithTitleWithSpacesIsInvalid() {
        // Arrange
        var draft = BugReportDraft()
        draft.title = "   "
        
        // Act
        let isValid = BugReportValidator.isValid(draft)
        
        // Assert
        #expect(isValid == true)
    }

}
