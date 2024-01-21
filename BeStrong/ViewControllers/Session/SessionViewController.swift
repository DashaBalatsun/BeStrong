//
//  SessionViewController.swift
//  BeStrong
//
//  Created by Дарья Балацун on 26.12.23.
//

import UIKit

class SessionViewController: BaseViewController {
    
    private let timerView = TimerView()
    private let statsView = StatsView(with: R.Strings.Session.workoutStats)
    private let stepsView = StepsView(with: R.Strings.Session.stepsCounter)
    
    private var tabBarHeight: CGFloat {
        if let tabBarHeight = tabBarController?.tabBar.frame.size.height {
            return tabBarHeight
        }
        return 0
    }
    
    private let timerDuration = 15.0
    
    override func navBarLeftButtonHandler() {
        super.navBarLeftButtonHandler()
        
        if timerView.state == .isStopped {
            timerView.startTimer {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.navBarRightButtonHandler()
                }
            }
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRunning ? .isStopped : .isRunning
        setTitleForNavButton(timerView.state == .isRunning
                             ? R.Strings.Session.navBarPause
                             : R.Strings.Session.navBarStart, at: .left)
    }
    
    override func navBarRightButtonHandler() {
        super.navBarRightButtonHandler()
        
        timerView.stopTimer()
        timerView.state = .isStopped
        setTitleForNavButton(R.Strings.Session.navBarStart, at: .left)
    }
}

extension SessionViewController {
    
    override func addViews() {
        super.addViews()
        
        view.addView(timerView)
        view.addView(statsView)
        view.addView(stepsView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalTo: timerView.widthAnchor, multiplier: 0.9),
            
            statsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            statsView.topAnchor.constraint(equalTo: timerView.bottomAnchor, constant: 10),
            statsView.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -7.5),
            statsView.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -tabBarHeight),
            
            stepsView.leadingAnchor.constraint(equalTo: view.centerXAnchor, constant: 7.5),
            stepsView.topAnchor.constraint(equalTo: statsView.topAnchor),
            stepsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            stepsView.heightAnchor.constraint(equalTo: statsView.heightAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        
        title = R.Strings.NavBar.titleForSession
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: R.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: R.Strings.Session.navBarFinish)
        
        timerView.configure(with: timerDuration, progress: 0)
        
        statsView.configure(with: [.heartRate(value: "155"),
                                   .averagePace(value: "8'20''"),
                                   .totalSteps(value: "7,682"),
                                   .totalDistance(value: "8.25")])
        stepsView.configure(with: [.init(value: "8k", title: "2/14", heightMultiplier: 1),
                                   .init(value: "7k", title: "2/15", heightMultiplier: 0.8),
                                   .init(value: "5k", title: "2/16", heightMultiplier: 0.6),
                                   .init(value: "6k", title: "2/17", heightMultiplier: 0.7)])
    }
}
