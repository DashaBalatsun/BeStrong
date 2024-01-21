//
//  Resouces.swift
//  BeStrong
//
//  Created by Дарья Балацун on 23.12.23.
//

import UIKit

enum R {
    enum Colors {
        static let active = UIColor(hexString: "#447BFE")
        static let inactive = UIColor(hexString: "#929DA5")
        
        static let baground = UIColor(hexString: "#F8F9F9")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let secondary = UIColor(hexString: "#F0F3FF")
        
        static let titleGray = UIColor(hexString: "#545C77")
        static let subtitleGray = UIColor(hexString: "#D8D8D8")
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
        }
        
        enum Session {
            static let navBarPause = "Pause"
            static let navBarStart = "Start   "
            static let navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed Time"
            static let remainingTime = "Remaining Time"
            static let completed = "Completed"
            static let remaining = "Remaining"
            
            static let workoutStats = "Workout stats"
            static let averagePace = "Average pats"
            static let totalDistance = "Total distance"
            static let totalSteps = "Total steps"
            
            static let stepsCounter = "Steps Counter"
            
            static let heartRate = "Heart rate"
        }
        
        enum NavBar {
            static let titleForSession = "High Intensity Cardio"
            static let titleForSettings = "Settings"
            static let titleForProgress = "Workout Progress"
            static let titleForOverview = "Today"
        }
        
        enum Progress {
            static let navBarRight = "Export"
            static let navBarLeft = "Details"
            
            static let dailyPerformance = "Daily Performance"
            static let last7Days = "Last 7 days"
            
            static let monthlyPerformance = "Monthly Performance"
            static let last10month = "Last 10 month"
        }
        
        enum OverView {
            static let allWorkoutsButton = "All Workouts"
        }
    }
    
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "House Icon")
                case .session: return UIImage(named: "Clock Icon")
                case .progress: return UIImage(named: "Analytics Bars")
                case .settings: return UIImage(named: "Gear Icon")
                }
            }
        }
        
        enum Common {
            static let allWorkoutsButton = UIImage(named: "allWorkouts")
            static let addButton = UIImage(named: "addButton")
        }
        
        enum OverView {
            static let rightArrow = UIImage(named: "right_arrow")
            static let checkmarkNotDone = UIImage(named: "checkmark_not_done")
            static let checkmarkDone = UIImage(named: "checkmark_done")
        }
        
        enum Session {
            static let heartIcon = UIImage(named: "heart_icon")
            static let speedIcon = UIImage(named: "speed_icon")
            static let mapsIcon = UIImage(named: "maps_icon")
            static let stepstIcon = UIImage(named: "steps_icon")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
