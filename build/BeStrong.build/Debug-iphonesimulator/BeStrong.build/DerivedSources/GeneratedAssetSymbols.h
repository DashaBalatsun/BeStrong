#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "Analytics Bars" asset catalog image resource.
static NSString * const ACImageNameAnalyticsBars AC_SWIFT_PRIVATE = @"Analytics Bars";

/// The "Clock Icon" asset catalog image resource.
static NSString * const ACImageNameClockIcon AC_SWIFT_PRIVATE = @"Clock Icon";

/// The "Gear Icon" asset catalog image resource.
static NSString * const ACImageNameGearIcon AC_SWIFT_PRIVATE = @"Gear Icon";

/// The "House Icon" asset catalog image resource.
static NSString * const ACImageNameHouseIcon AC_SWIFT_PRIVATE = @"House Icon";

/// The "addButton" asset catalog image resource.
static NSString * const ACImageNameAddButton AC_SWIFT_PRIVATE = @"addButton";

/// The "allWorkouts" asset catalog image resource.
static NSString * const ACImageNameAllWorkouts AC_SWIFT_PRIVATE = @"allWorkouts";

/// The "checkmark_done" asset catalog image resource.
static NSString * const ACImageNameCheckmarkDone AC_SWIFT_PRIVATE = @"checkmark_done";

/// The "checkmark_not_done" asset catalog image resource.
static NSString * const ACImageNameCheckmarkNotDone AC_SWIFT_PRIVATE = @"checkmark_not_done";

/// The "heart_icon" asset catalog image resource.
static NSString * const ACImageNameHeartIcon AC_SWIFT_PRIVATE = @"heart_icon";

/// The "maps_icon" asset catalog image resource.
static NSString * const ACImageNameMapsIcon AC_SWIFT_PRIVATE = @"maps_icon";

/// The "right_arrow" asset catalog image resource.
static NSString * const ACImageNameRightArrow AC_SWIFT_PRIVATE = @"right_arrow";

/// The "speed_icon" asset catalog image resource.
static NSString * const ACImageNameSpeedIcon AC_SWIFT_PRIVATE = @"speed_icon";

/// The "steps_icon" asset catalog image resource.
static NSString * const ACImageNameStepsIcon AC_SWIFT_PRIVATE = @"steps_icon";

#undef AC_SWIFT_PRIVATE