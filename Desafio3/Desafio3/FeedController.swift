import UIKit

class FeedController: UIViewController {
    //MARK: Properties
    let cores: [UIColor] = [.blue, .green, .red, .yellow, .black, .gray, .brown, .magenta, .cyan, .systemGray6]

    
    private lazy var button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.setTitle("Toque aqui", for: .normal)
        button.addTarget(self, action: #selector(colorChange), for: .touchUpInside)
        return button
    }()
    
    
    //MARK: life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        configureLayout()
    }
    
    //MARK: Helpers
    
    func configureLayout(){
        view.addSubview(button1)
        configureUI()
    }
    
    func configureUI(){
        let button1 = [
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button1.widthAnchor.constraint(equalToConstant: 150),
            button1.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(button1)
    }
    
    @objc func colorChange(){
        guard let exploreController = self.tabBarController?.viewControllers?[1] as? ExplorerController else {
            return
        }
        exploreController.view.backgroundColor = cores.randomElement()
    }
}

