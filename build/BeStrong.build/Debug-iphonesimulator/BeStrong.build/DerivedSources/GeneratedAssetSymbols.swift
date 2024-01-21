import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 11.0, macOS 10.13, tvOS 11.0, *)
extension ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 11.0, macOS 10.7, tvOS 11.0, *)
extension ImageResource {

    /// The "Analytics Bars" asset catalog image resource.
    static let analyticsBars = ImageResource(name: "Analytics Bars", bundle: resourceBundle)

    /// The "Clock Icon" asset catalog image resource.
    static let clockIcon = ImageResource(name: "Clock Icon", bundle: resourceBundle)

    /// The "Gear Icon" asset catalog image resource.
    static let gearIcon = ImageResource(name: "Gear Icon", bundle: resourceBundle)

    /// The "House Icon" asset catalog image resource.
    static let houseIcon = ImageResource(name: "House Icon", bundle: resourceBundle)

    /// The "addButton" asset catalog image resource.
    static let addButton = ImageResource(name: "addButton", bundle: resourceBundle)

    /// The "allWorkouts" asset catalog image resource.
    static let allWorkouts = ImageResource(name: "allWorkouts", bundle: resourceBundle)

    /// The "checkmark_done" asset catalog image resource.
    static let checkmarkDone = ImageResource(name: "checkmark_done", bundle: resourceBundle)

    /// The "checkmark_not_done" asset catalog image resource.
    static let checkmarkNotDone = ImageResource(name: "checkmark_not_done", bundle: resourceBundle)

    /// The "heart_icon" asset catalog image resource.
    static let heartIcon = ImageResource(name: "heart_icon", bundle: resourceBundle)

    /// The "maps_icon" asset catalog image resource.
    static let mapsIcon = ImageResource(name: "maps_icon", bundle: resourceBundle)

    /// The "right_arrow" asset catalog image resource.
    static let rightArrow = ImageResource(name: "right_arrow", bundle: resourceBundle)

    /// The "speed_icon" asset catalog image resource.
    static let speedIcon = ImageResource(name: "speed_icon", bundle: resourceBundle)

    /// The "steps_icon" asset catalog image resource.
    static let stepsIcon = ImageResource(name: "steps_icon", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 10.13, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "Analytics Bars" asset catalog image.
    static var analyticsBars: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .analyticsBars)
#else
        .init()
#endif
    }

    /// The "Clock Icon" asset catalog image.
    static var clockIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .clockIcon)
#else
        .init()
#endif
    }

    /// The "Gear Icon" asset catalog image.
    static var gearIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .gearIcon)
#else
        .init()
#endif
    }

    /// The "House Icon" asset catalog image.
    static var houseIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .houseIcon)
#else
        .init()
#endif
    }

    /// The "addButton" asset catalog image.
    static var addButton: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .addButton)
#else
        .init()
#endif
    }

    /// The "allWorkouts" asset catalog image.
    static var allWorkouts: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .allWorkouts)
#else
        .init()
#endif
    }

    /// The "checkmark_done" asset catalog image.
    static var checkmarkDone: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .checkmarkDone)
#else
        .init()
#endif
    }

    /// The "checkmark_not_done" asset catalog image.
    static var checkmarkNotDone: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .checkmarkNotDone)
#else
        .init()
#endif
    }

    /// The "heart_icon" asset catalog image.
    static var heartIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .heartIcon)
#else
        .init()
#endif
    }

    /// The "maps_icon" asset catalog image.
    static var mapsIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .mapsIcon)
#else
        .init()
#endif
    }

    /// The "right_arrow" asset catalog image.
    static var rightArrow: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .rightArrow)
#else
        .init()
#endif
    }

    /// The "speed_icon" asset catalog image.
    static var speedIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .speedIcon)
#else
        .init()
#endif
    }

    /// The "steps_icon" asset catalog image.
    static var stepsIcon: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .stepsIcon)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "Analytics Bars" asset catalog image.
    static var analyticsBars: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .analyticsBars)
#else
        .init()
#endif
    }

    /// The "Clock Icon" asset catalog image.
    static var clockIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .clockIcon)
#else
        .init()
#endif
    }

    /// The "Gear Icon" asset catalog image.
    static var gearIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .gearIcon)
#else
        .init()
#endif
    }

    /// The "House Icon" asset catalog image.
    static var houseIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .houseIcon)
#else
        .init()
#endif
    }

    /// The "addButton" asset catalog image.
    static var addButton: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .addButton)
#else
        .init()
#endif
    }

    /// The "allWorkouts" asset catalog image.
    static var allWorkouts: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .allWorkouts)
#else
        .init()
#endif
    }

    /// The "checkmark_done" asset catalog image.
    static var checkmarkDone: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .checkmarkDone)
#else
        .init()
#endif
    }

    /// The "checkmark_not_done" asset catalog image.
    static var checkmarkNotDone: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .checkmarkNotDone)
#else
        .init()
#endif
    }

    /// The "heart_icon" asset catalog image.
    static var heartIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .heartIcon)
#else
        .init()
#endif
    }

    /// The "maps_icon" asset catalog image.
    static var mapsIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .mapsIcon)
#else
        .init()
#endif
    }

    /// The "right_arrow" asset catalog image.
    static var rightArrow: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .rightArrow)
#else
        .init()
#endif
    }

    /// The "speed_icon" asset catalog image.
    static var speedIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .speedIcon)
#else
        .init()
#endif
    }

    /// The "steps_icon" asset catalog image.
    static var stepsIcon: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .stepsIcon)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 11.0, macOS 10.13, tvOS 11.0, *)
@available(watchOS, unavailable)
extension ColorResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 11.0, macOS 10.7, tvOS 11.0, *)
@available(watchOS, unavailable)
extension ImageResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

// MARK: - Backwards Deployment Support -

/// A color resource.
struct ColorResource: Hashable {

    /// An asset catalog color resource name.
    fileprivate let name: String

    /// An asset catalog color resource bundle.
    fileprivate let bundle: Bundle

    /// Initialize a `ColorResource` with `name` and `bundle`.
    init(name: String, bundle: Bundle) {
        self.name = name
        self.bundle = bundle
    }

}

/// An image resource.
struct ImageResource: Hashable {

    /// An asset catalog image resource name.
    fileprivate let name: String

    /// An asset catalog image resource bundle.
    fileprivate let bundle: Bundle

    /// Initialize an `ImageResource` with `name` and `bundle`.
    init(name: String, bundle: Bundle) {
        self.name = name
        self.bundle = bundle
    }

}

#if canImport(AppKit)
@available(macOS 10.13, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

    /// Initialize a `NSColor` with a color resource.
    convenience init(resource: ColorResource) {
        self.init(named: NSColor.Name(resource.name), bundle: resource.bundle)!
    }

}

protocol _ACResourceInitProtocol {}
extension AppKit.NSImage: _ACResourceInitProtocol {}

@available(macOS 10.7, *)
@available(macCatalyst, unavailable)
extension _ACResourceInitProtocol {

    /// Initialize a `NSImage` with an image resource.
    init(resource: ImageResource) {
        self = resource.bundle.image(forResource: NSImage.Name(resource.name))! as! Self
    }

}
#endif

#if canImport(UIKit)
@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    /// Initialize a `UIColor` with a color resource.
    convenience init(resource: ColorResource) {
#if !os(watchOS)
        self.init(named: resource.name, in: resource.bundle, compatibleWith: nil)!
#else
        self.init()
#endif
    }

}

@available(iOS 11.0, tvOS 11.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// Initialize a `UIImage` with an image resource.
    convenience init(resource: ImageResource) {
#if !os(watchOS)
        self.init(named: resource.name, in: resource.bundle, compatibleWith: nil)!
#else
        self.init()
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Color {

    /// Initialize a `Color` with a color resource.
    init(_ resource: ColorResource) {
        self.init(resource.name, bundle: resource.bundle)
    }

}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
extension SwiftUI.Image {

    /// Initialize an `Image` with an image resource.
    init(_ resource: ImageResource) {
        self.init(resource.name, bundle: resource.bundle)
    }

}
#endif