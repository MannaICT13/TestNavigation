//
//  TestNavigationTests.swift
//  TestNavigationTests
//
//  Created by Md Khaled Hasan Manna on 9/8/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import XCTest
@testable import TestNavigation

class TestNavigationTests: XCTestCase {

    
    var sut : ViewController!
    var navigationController : UINavigationController!
    
    
    
    override func setUp() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        sut = storyboard.instantiateViewController(identifier: "ViewController") as ViewController
        sut.loadViewIfNeeded()
        navigationController = UINavigationController(rootViewController: sut)
       
    }

    override func tearDown() {
       sut = nil
        navigationController = nil
    }

    func testNextView_WhenTapped_SecondViewControllerisPushed() throws{
        
        sut.nextViewBtnOutlet.sendActions(for: .touchUpInside)
        RunLoop.current.run(until: Date())
        
        guard let _ = navigationController.topViewController as? SecondViewController else{
            XCTFail()
            return
        }
        
    }
    
    

}
