import UIKit

class ExplorerController: UIViewController {
    //MARK: Properties
    let cores: [UIColor] = [.blue, .green, .red, .yellow, .black, .gray, .brown, .magenta, .cyan, .systemGray6]
    
    private lazy var button2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.setTitle("Toque aqui", for: .normal)
        button.addTarget(self, action: #selector(colorChange), for: .touchUpInside)
        return button
    }()
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        configureLayout()
    }
    
    //MARK: Helpers
    
    func configureLayout() {
        view.addSubview(button2)
        configureUI()
    }
    
    func configureUI() {
        let button2 = [
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button2.widthAnchor.constraint(equalToConstant: 150),
            button2.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(button2)
    }
    
    @objc func colorChange() {
        guard let feedController = self.tabBarController?.viewControllers?.first as? FeedController else {
            return
        }
        feedController.view.backgroundColor = cores.randomElement()
    }
}

