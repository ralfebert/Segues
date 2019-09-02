// © 2019 Ralf Ebert — iOS Example Project: Segues
// License: https://opensource.org/licenses/MIT

import UIKit

class ExampleViewController: UIViewController {

    static var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        Self.counter += 1
        self.navigationItem.title = "Demo \(Self.counter)"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.logEvent("viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.logEvent("viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.logEvent("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.logEvent("viewDidDisappear")
    }

    func logEvent(_ event: String) {
        debugPrint("\(self.navigationItem.title ?? ""): \(event)")
    }

}
