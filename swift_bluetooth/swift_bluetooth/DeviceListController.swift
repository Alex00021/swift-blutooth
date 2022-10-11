////
////  DeviceListController.swift
////  Hear_BLE
////
////  Created by Alex.Lingjiahua on 2022/6/30.
////
//
//import Foundation
//import UIKit
//
//
//class DeviceListController: UIViewController {
//
//
//
//
//    var scanBtn: UIButton? = UIButton.init()
//
//    var tableView:UITableView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.view.backgroundColor = UIColor.white
//        self.navigationController?.isNavigationBarHidden = false
//
//        baseUI()
//    }
//
//
//
//    func  baseUI() {
//
//        //创建表格图
//        self.tableView = UITableView(frame: self.view.frame, style: .plain)
//        //将代理，数据来源设为自己
//        self.tableView?.delegate = self
//        self.tableView?.dataSource = self
//        //创建表头标签
//        let headerLabel = UILabel(frame: CGRect(x: 40, y: 100, width: self.view.bounds.width - 80, height: 30))
//        headerLabel.text = "Header"
//        self.tableView?.tableHeaderView = headerLabel
//
//        self.view.addSubview(tableView)
//
//
//    }
//}
//
//
//
//extension DeviceListController: UITableViewDelegate, UITableViewDataSource{
//    //设置分区数(不设置默认为1)
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 20
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        //设置重用单元格名称
//        let identifier = "reusedCell"
//        //使用重用单元格
//        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
//        //如果单元格为nil创建重用单元格
//        if cell == nil{
//            cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
//        }
//        cell?.textLabel?.text = "\(indexPath.row)"
//        return cell!
//    }
//
//    //自定义单元格高度
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 40
//    }
//    //点击单元格响应时间
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.tableView?.deselectRow(at: indexPath, animated: true)//使被点击的单元格的颜色立即恢复
//        let cell = tableView.cellForRow(at: indexPath)
//        if cell?.accessoryType == UITableViewCell.AccessoryType.none{
//            cell?.accessoryType = .checkmark
//            print("你选择了：\(String(describing: cell?.textLabel?.text))")
//        }else{
//            cell?.accessoryType = .none
//        }
//    }
//
//}
