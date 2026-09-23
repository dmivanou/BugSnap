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

}
