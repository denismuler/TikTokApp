//
//  ViewController.swift
//  TikTok
//
//  Created by Denys Melnyk on 09.06.2022.
//

import SnapKit
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var tableView = UITableView()
    private var videoLinks: [String] = ["https://www.instagram.com/tv/Ceiux6tPDNM/?utm_source=ig_web_copy_link",
        "https://vm.tiktok.com/ZMN81XLQv/?k=1",
                                        "https://instagram.fmnl25-2.fna.fbcdn.net/v/t50.2886-16/161454505_126220179452986_7645785967961263824_n.mp4?_nc_ht=instagram.fmnl25-2.fna.fbcdn.net&_nc_cat=110&_nc_ohc=teeLtDVe9xMAX_lteI2&ccb=7-4&oe=605830BD&oh=add9716a62da11965e91cf90523ba002&_nc_sid=83d603",
                                        "https://instagram.fcgk30-1.fna.fbcdn.net/v/t50.2886-16/160645983_739580000063590_3137969578785779462_n.mp4?_nc_ht=instagram.fcgk30-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=25epai85VXYAX8Gde9z&ccb=7-4&oe=605989D3&oh=30c9c8474b06c0a4d5e6d5fdcfa5e073&_nc_sid=83d603",
                                        "https://instagram.fsin9-1.fna.fbcdn.net/v/t50.2886-16/160242410_491585305339867_8737078020931524871_n.mp4?_nc_ht=instagram.fsin9-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=Tr3Eu9Os88EAX-Z5F8i&ccb=7-4&oe=60595EC3&oh=a522ebf2bf71dee1100497a873e0d240",
                                        "https://instagram.fcok4-1.fna.fbcdn.net/v/t50.2886-16/161092934_246935930440568_8175537815544894451_n.mp4?_nc_ht=instagram.fcok4-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=S78ggB6m9BgAX_uL6N3&ccb=7-4&oe=6058E3A8&oh=28500682ee17c3233b5917a74b9c3430"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isPagingEnabled = true
        tableView.showsVerticalScrollIndicator = false
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        let blackView = UIView()
        blackView.backgroundColor = .black
        view.addSubview(blackView)
        blackView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.height.equalTo(80)
        }
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        let button1 = UIButton()
        button1.setImage(UIImage(named: "Home"), for: .normal)
        let button2 = UIButton()
        button2.setImage(UIImage(named: "Discover"), for: .normal)
        let button3 = UIButton()
        button3.setImage(UIImage(named: "Button Shape"), for: .normal)
        let button4 = UIButton()
        button4.setImage(UIImage(named: "Inbox"), for: .normal)
        let button5 = UIButton()
        button5.setImage(UIImage(named: "Me"), for: .normal)
        
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.addArrangedSubview(button3)
        stackView.addArrangedSubview(button4)
        stackView.addArrangedSubview(button5)
        
        view.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview().inset(15)
            make.height.equalTo(60)
                
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoLinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return VideoTableViewCell(link: videoLinks[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height
    }
    
}

