//
//  Playground1.swift
//  Core
//
//  Created by kai on 2020/04/22.
//

import Foundation
import RxSwift

class Playground1 {
    func test1() {
        Observable.from([0, 1, 2, 3])
            .subscribe(onNext: { print($0) })
            .disposed(by: bag)
        
        Observable.from([4, 5, 6, 7])
            .subscribe(onNext: { print($0) })
            .disposed(by: bag)
    }
    
    private let bag = DisposeBag()
}
