//
//  ProgressViewController.swift
//  BeStrong
//
//  Created by Дарья Балацун on 26.12.23.
//

import UIKit

class ProgressViewController: BaseViewController {
    
    private let dailyPerformanceView = DailyPerformanceView(with: R.Strings.Progress.dailyPerformance,
                                                            buttonTitle: R.Strings.Progress.last7Days.uppercased())
    
    private let monthlyPerformanceView = MonthlyPerfomanceView(with: R.Strings.Progress.monthlyPerformance,
                                                               buttonTitle: R.Strings.Progress.last10month.uppercased())
    
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
//        scroll.delaysContentTouches = false
        scroll.canCancelContentTouches = false
        return scroll
    }()
    
    private let contentView: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
        }()
}

extension ProgressViewController {
    
    override func addViews() {
        super.addViews()
        
        view.addView(scrollView)
        scrollView.addSubview(contentView)
        scrollView.addSubview(dailyPerformanceView)
        scrollView.addSubview(monthlyPerformanceView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 700),

            dailyPerformanceView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68),
            
            monthlyPerformanceView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            monthlyPerformanceView.topAnchor.constraint(equalTo: dailyPerformanceView.bottomAnchor, constant: 15),
            monthlyPerformanceView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            monthlyPerformanceView.heightAnchor.constraint(equalTo: monthlyPerformanceView.widthAnchor, multiplier: 1.06)
        ])
    }
    
    override func configure() {
        super.configure()
        
        title = R.Strings.NavBar.titleForProgress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        monthlyPerformanceView.translatesAutoresizingMaskIntoConstraints = false
        dailyPerformanceView.translatesAutoresizingMaskIntoConstraints = false
        
        addNavBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Progress.navBarRight)
        
        dailyPerformanceView.configure(with: [.init(value: "1", title: "Mon", heightMultiplier: 0.2),
                                              .init(value: "2", title: "Tue", heightMultiplier: 0.4),
                                              .init(value: "3", title: "Wen", heightMultiplier: 0.6),
                                              .init(value: "4", title: "Thu", heightMultiplier: 0.8),
                                              .init(value: "5", title: "Fri", heightMultiplier: 1),
                                              .init(value: "3", title: "Sat", heightMultiplier: 0.6),
                                              .init(value: "2", title: "Sun", heightMultiplier: 0.3)])
        
        monthlyPerformanceView.configure(with: [.init(title: "Mar", value: 45),
                                                .init(title: "Apr", value: 55),
                                                .init(title: "May", value: 60),
                                                .init(title: "Jun", value: 65),
                                                .init(title: "Jul", value: 70),
                                                .init(title: "Aug", value: 80),
                                                .init(title: "Sep", value: 65),
                                                .init(title: "Oct", value: 45),
                                                .init(title: "Nov", value: 30),
                                                .init(title: "Dec", value: 15)],
                                         topChartOffset: 10)
    }
}
