//
//  ViewController.swift
//  Xylophone
//
//  Created by Леонид Турко on 07.04.2023.
//

import UIKit
import SwiftUI
import SnapKit
import AVFoundation

class MusicViewController: UIViewController {
  //  MARK: - Public Properties
  var player: AVAudioPlayer!
  
  //  MARK: - Private Properties
  private lazy var stackView: UIStackView = {
    let element = UIStackView()
    element.axis = .vertical
    element.distribution = .fillEqually
    element.spacing = 8
    return element
  }()
  
  private lazy var cView: UIView = {
    let element = UIView()
    return element
  }()
  
  private lazy var dView: UIView = {
    let element = UIView()
    return element
  }()
  
  private lazy var eView: UIView = {
    let element = UIView()
    return element
  }()
  
  private lazy var fView: UIView = {
    let element = UIView()
    return element
  }()
  
  private lazy var gView: UIView = {
    let element = UIView()
    return element
  }()
  
  private lazy var aView: UIView = {
    let element = UIView()
    return element
  }()
  
  private lazy var bView: UIView = {
    let element = UIView()
    return element
  }()
  
  private lazy var cButton: UIButton = {
    let element = UIButton(type: .system)
    element.backgroundColor = #colorLiteral(red: 0.8009233475, green: 0.1846773922, blue: 0.1541629434, alpha: 1)
    element.setTitle("C", for: .normal)
    element.tintColor = .white
    element.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    element.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    return element
  }()
  
  private lazy var dButton: UIButton = {
    let element = UIButton(type: .system)
    element.backgroundColor = #colorLiteral(red: 1, green: 0.5825584531, blue: 0, alpha: 1)
    element.setTitle("D", for: .normal)
    element.tintColor = .white
    element.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    element.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    return element
  }()
  
  private lazy var eButton: UIButton = {
    let element = UIButton(type: .system)
    element.backgroundColor = #colorLiteral(red: 1, green: 0.8014437556, blue: 0.004643389955, alpha: 1)
    element.setTitle("E", for: .normal)
    element.tintColor = .white
    element.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    element.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    return element
  }()
  
  private lazy var fButton: UIButton = {
    let element = UIButton(type: .system)
    element.backgroundColor = #colorLiteral(red: 0.2041296959, green: 0.7789589763, blue: 0.3484356999, alpha: 1)
    element.setTitle("F", for: .normal)
    element.tintColor = .white
    element.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    element.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    return element
  }()
  
  private lazy var gButton: UIButton = {
    let element = UIButton(type: .system)
    element.backgroundColor = #colorLiteral(red: 0.3460007906, green: 0.3354875743, blue: 0.8400039077, alpha: 1)
    element.setTitle("G", for: .normal)
    element.tintColor = .white
    element.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    element.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    return element
  }()
  
  private lazy var aButton: UIButton = {
    let element = UIButton(type: .system)
    element.backgroundColor = #colorLiteral(red: 0.01145582832, green: 0.3844296336, blue: 0.8001473546, alpha: 1)
    element.setTitle("A", for: .normal)
    element.tintColor = .white
    element.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    element.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    return element
  }()
  
  private lazy var bButton: UIButton = {
    let element = UIButton(type: .system)
    element.backgroundColor = #colorLiteral(red: 0.5489991307, green: 0.2567772865, blue: 0.695340693, alpha: 1)
    element.setTitle("B", for: .normal)
    element.tintColor = .white
    element.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
    element.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    return element
  }()
  

  //  MARK: - Override Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    addView()
    setConstraints()
  }
  
  @objc private func buttonPressed(sender: UIButton) {
    //playSound(sound: sender.titleLabel?.text ?? "")
    playSound(soundName: sender.currentTitle ?? "")
    
    sender.alpha = 0.5
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
      sender.alpha = 1
    }
  }
}

//  MARK: -  Private Methods
extension MusicViewController {
  private func addView() {
    view.addSubview(stackView)
    stackView.addArrangedSubview(cView)
    stackView.addArrangedSubview(dView)
    stackView.addArrangedSubview(eView)
    stackView.addArrangedSubview(fView)
    stackView.addArrangedSubview(gView)
    stackView.addArrangedSubview(aView)
    stackView.addArrangedSubview(bView)
    
    cView.addSubview(cButton)
    dView.addSubview(dButton)
    eView.addSubview(eButton)
    fView.addSubview(fButton)
    gView.addSubview(gButton)
    aView.addSubview(aButton)
    bView.addSubview(bButton)
    
  }
  
  private func setConstraints() {
    stackView.snp.makeConstraints { make in
      make.top.bottom.equalToSuperview().inset(50)
      make.leading.trailing.equalToSuperview().inset(14)
    }
    
    cButton.snp.makeConstraints { make in
      make.edges.equalToSuperview()
    }
    
    dButton.snp.makeConstraints { make in
      make.top.bottom.equalToSuperview()
      make.leading.trailing.equalToSuperview().inset(6)
    }
    
    eButton.snp.makeConstraints { make in
      make.top.bottom.equalToSuperview()
      make.leading.trailing.equalToSuperview().inset(10)
    }
    
    fButton.snp.makeConstraints { make in
      make.top.bottom.equalToSuperview()
      make.leading.trailing.equalToSuperview().inset(14)
    }
    
    gButton.snp.makeConstraints { make in
      make.top.bottom.equalToSuperview()
      make.leading.trailing.equalToSuperview().inset(18)
    }
    
    aButton.snp.makeConstraints { make in
      make.top.bottom.equalToSuperview()
      make.leading.trailing.equalToSuperview().inset(22)
    }
    
    bButton.snp.makeConstraints { make in
      make.top.bottom.equalToSuperview()
      make.leading.trailing.equalToSuperview().inset(26)
    }
  }
  
  func playSound(soundName: String) {
    guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else { return }
    player = try! AVAudioPlayer(contentsOf: url)
    player.play()
  }
}

//  MARK: - Show Canvas
struct ContentViewController: UIViewControllerRepresentable {
  
  typealias UIViewControllerType = MusicViewController
  
  func makeUIViewController(context: Context) -> UIViewControllerType {
    return MusicViewController()
  }
  
  func updateUIViewController(_ uiViewController: MusicViewController, context: Context) {}
}

struct ContentViewController_Previews: PreviewProvider {
  static var previews: some View {
    ContentViewController()
      .edgesIgnoringSafeArea(.all)
      .colorScheme(.light) // or .dark
  }
}
