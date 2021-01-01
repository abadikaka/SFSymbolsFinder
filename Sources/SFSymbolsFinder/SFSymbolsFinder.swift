//
//  SFSymbolsFinder.swift
//
//
//  Created by Santoso, Michael Abadi on 30/12/2563 BE.
//

import SwiftUI

// MARK: - SFFinderConvertable

/// SFFinderConvertable: describe the theme provider capabilities
/// - image: return a SwiftUI Image
/// - systemName: return a system name of sf symbols as a String
public protocol SFFinderConvertable {
    var image: Image { get }
    var systemName: String { get }
}

public extension SFFinderConvertable {
    var image: Image {
        return Image(systemName: systemName)
    }

    var systemName: String {
        if let sfValidator = self as? SFSymbolsHasValidator {
            return sfValidator.validator.validateSystemName(for: self)
        } else {
            return ""
        }
    }
}

protocol SFSymbolsEnum: SFSymbolsHasValidator {
    var enumRawValue: String { get }
}

protocol SFSymbolsHasValidator {
    var validator: SFSymbolsValidation { get }
}

extension SFSymbolsHasValidator {
    var validator: SFSymbolsValidation {
        return SFSymbolsValidator()
    }
}

// MARK: - General

/// General category for sf symbols, not included in any category
public enum General: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case lineHorizontal3
    case lineHorizontal3Decrease
    case lineHorizontal3DecreaseCircle
    case lineHorizontal3DecreaseCircleFill
    case squareGrid3x2
    case squareGrid3x2Fill
    case squareGrid2x2
    case squareGrid2x2Fill
    case squareGrid4x3Fill
    case squareLefthalfFill
    case squareRighthalfFill
    case dotSquare
    case dotSquareFill
    case squareSplit2x1
    case squareSplit2x1Fill
    case squareSplit1x2
    case squareSplit1x2Fill
    case squareSplit2x2
    case squareSplit2x2Fill
    case squaresBelowRectangle
    case squareOnSquare
    case squareFillOnSquareFill
    case plusSquareOnSquare
    case plusSquareFillOnSquareFill
    case squareOnCircle
    case squareFillOnCircleFill
    case squareStack
    case squareStackFill
    case squareAndLineVerticalAndSquare
    case squareFillAndLineVerticalSquareFill
    case squareFillAndLineVerticalAndSquare
    case squareAndLineVerticalAndSquareFill
    case squareStack3dDownRight
    case squareStack3dDownRightFill
    case squareStack3dUp
    case squareStack3dUpFill
    case squareStack3dUpSlash
    case squareStack3dUpSlashFill

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Communication

/// Communication category for sf symbols
public enum Communication: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case mic
    case micFill
    case micCircle
    case micCircleFill
    case micSlash
    case micSlashFill

    case message
    case messageFill
    case messageCircle
    case messageCircleFill

    case bubbleRight
    case bubbleRightFill
    case bubbleLeft
    case bubbleLeftFill

    case exclamationmarkBubble
    case exclamationmarkBubbleFill

    case quoteBubble
    case quoteBubbleFill

    case tBubble
    case tBubbleFill

    case textBubble
    case textBubbleFill

    case captionsBubble
    case captionsBubbleFill

    case plusBubble
    case plusBubbleFill

    case ellipsesBubble
    case ellipsesBubbleFill

    case bubbleLeftAndBubbleRight
    case bubbleLeftAndBubbleRightFill

    case phone
    case phoneFill
    case phoneCircle
    case phoneCircleFill
    case phoneBadgePlus
    case phoneFillBadgePlus
    case phoneArrowUpRight
    case phoneFillArrowUpRight
    case phoneArrowDownLeft
    case phoneFillArrowDownLeft
    case phoneArrowRight
    case phoneFillArrowRight
    case phoneDown
    case phoneDownFill
    case phoneDownCircle
    case phoneDownCircleFill

    case teletype
    case teletypeAnswer

    case video
    case videoFill
    case videoCircle
    case videoCircleFill
    case videoSlash
    case videoSlashFill
    case videoBadgePlus
    case videoBadgePlusFill

    case arrowUpRightVideo
    case arrowUpRightVideoFill
    case arrowDownLeftVideo
    case arrowDownLeftVideoFill

    case questionmarkVideo
    case questionmarkVideoFill

    case envelope
    case envelopeFill
    case envelopeCircle
    case envelopeCircleFill
    case envelopeOpen
    case envelopeOpenFill
    case envelopeBadge
    case envelopeBadegFill

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Weather

/// Weather category for sf symbols
public enum Weather: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case sunMin
    case sunMinFill
    case sunMax
    case sunMaxFill
    case sunrise
    case sunriseFill
    case sunset
    case sunsetFill
    case sunDust
    case sunDustFill
    case sunHazeFill

    case moon
    case moonFill
    case moonCircle
    case moonCircleFill
    case zzz
    case moonZzz
    case moonZzzFill
    case sparkles
    case moonStars
    case moonStarsFill

    case cloud
    case cloudFill
    case cloudDrizzle
    case cloudDrizzleFill
    case cloudRain
    case cloudRainFill
    case cloudHeavyrain
    case cloudHeavyrainFill
    case cloudFog
    case cloudFogFill
    case cloudHail
    case cloudHailFill
    case cloudSnow
    case cloudSnowfill
    case cloudSleet
    case cloudSleetFill
    case cloudBolt
    case cloudBoltFill
    case cloudSun
    case cloudSunFill
    case cloudSunRain
    case cloudSunRainFill
    case cloudSunBolt
    case cloudSunBoltFill
    case cloudMoon
    case cloudMoonFill
    case cloudMoonRain
    case cloudMoonRainFill
    case cloudBoltRain
    case cloudBoltRainFill
    case cloudMoonBolt
    case cloudMoonBoltFill

    case smoke
    case smokeFill
    case wind
    case snow
    case windSnow
    case tornado
    case tropicalstorm
    case huricane

    case thermometerSun
    case thermometerSnowflake
    case thermometer

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - ObjectAndTools

/// Object and tools category sf symbols
public enum ObjectAndTools: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case pencil
    case pencilCircle
    case pencilCircleFill
    case pencilSlash
    case squareAndPencil
    case pencilAndEllipsisRectangle
    case pencilAndOutline

    case trash
    case trashFill
    case trashCircle
    case trashCircleFill
    case trashSlash
    case trashSlashFill

    case folder
    case folderFill
    case folderCircle
    case folderCircleFill
    case folderBadgePlus
    case folderFillBadgePlus
    case folderBadgeMinus
    case folderFillBadgeMinus
    case folderBadgePersonCrop
    case folderFillBadgePersonCrop

    case paperplane
    case paperplaneFill

    case tray
    case trayFill
    case trayAndArrowUp
    case trayAndArrowUpFill
    case trayAndArrowDown
    case trayAndArrowDownFill
    case tray2
    case tray2Fill
    case trayFull
    case trayFullFill

    case archiveBox
    case archiveBoxFill
    case binXmark
    case binXmarkFill
    case arrowUpBin
    case arrowUpBinFill

    case calendar
    case calendarCircle
    case calendarCircleFill
    case calendarBadgePlus
    case calendarBadgeMinus

    case book
    case bookFill
    case bookCircle
    case bookCircleFill
    case bookmark
    case bookmarkFill

    case rosette
    case paperclip
    case paperclipCircle
    case paperclicCircleFill
    case rectangleAndPaperclip
    case link
    case linkCircle
    case linkCircleFill

    case pencilTip
    case pencilTipCropCircle
    case pencilTipCropCircleBadgePlus
    case pencilTipCropCircleBadgeMinus

    case umbrella
    case umbrellaFill

    case speaker
    case speakerFill
    case speakerSlash
    case speakerSlashFill
    case speakerZzz
    case speakerZzzFill
    case speaker1
    case speaker1Fill
    case speaker2
    case speaker2Fill
    case speaker3
    case speaker3Fill

    case magnifyingglass
    case magnifyingglassCircle
    case magnifyingglassCircleFill
    case plusMagnifyingglass
    case minusMagnifyingglass
    case oneMagnifyingglass

    case flag
    case flagFill
    case flagCircle
    case flagCircleFill
    case flagSlash
    case flagSlashFill

    case bell
    case bellFill
    case bellCircle
    case bellCircleFill
    case bellSlash
    case bellSlashFill

    case tag
    case tagFill
    case tagCircle
    case tagCircleFill

    case flashlightOffFill
    case flashlightOnFill

    case camera
    case cameraFill
    case cameraCircle
    case cameraCircleFill
    case cameraRotate
    case cameraRotateFill
    case cameraOnRectangle
    case cameraOnRectangleFill

    case gear
    case scissors
    case scissorsBadgeEllipsis
    case wandAndRays
    case wandAndRaysInverse
    case wandAndStars
    case wandAndStarsInverse
    case crop
    case cropRotate
    case dial
    case dialFill

    case gauge
    case gaugeBadgePlus
    case gaugeBadgeMinus
    case speedometer
    case metronome
    case tuningfork
    case paintbrush
    case paintbrushFill
    case bandage
    case bandageFill
    case wrench
    case wrenchFill
    case hammer
    case hammerFill
    case eyedropper
    case eyedropperHalffull
    case eyedropperFull
    case printer
    case printerFill
    case briefcase
    case briefcaseFill

    case lock
    case lockFill
    case lockCircle
    case lockCircleFill
    case lockSlash
    case lockSlashFill
    case lockOpen
    case lockOpenFill
    case lockRotation
    case lockRotationOpen

    case pin
    case pinFill
    case pinCircle
    case pinCircleFill
    case pinSlash
    case pinSlashFill

    case mappin
    case mappinCircle
    case mappinCircleFill
    case mappinSlash
    case mappinAndEllipse
    case map
    case mapFill

    case antennaRadiowavesLeftAndRight
    case guitars
    case bedDouble
    case bedDoubleFill
    case film
    case filmFill
    case cameraViewfinder
    case shield
    case shieldFill
    case shieldSlash
    case shieldSlashFill
    case lockShield
    case lockShieldFill
    case checkmarkShield
    case checkmarkShieldFill
    case xmarkShield
    case xmarkShieldFill
    case exclamationmarkShield
    case exclamationmarkShieldFill
    case shieldLefthalfFill
    case cubeBox
    case cubeBoxFill
    case clock
    case clockFill
    case alarm
    case alarmFill
    case stopwatch
    case stopwatchFill
    case timer
    case gamecontroller
    case gamecontrollerFill
    case headphones
    case gift
    case giftFill
    case hourglass
    case hourglassBottomhalfFill
    case hourglassTophalfFill
    case perspective
    case aspectratio
    case aspectrationFill
    case skew
    case eyeglasses
    
    case lightbulb
    case lightbulbFill
    case lightbulbSlash
    case lightbulbSlashFill

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Devices

/// Devices category for sf symbols
public enum Devices: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case keyboard
    case keyboardChevronCompactDown
    case hifispeaker
    case hifispeakerFill
    case printer
    case printerFill
    case tv
    case tvFill
    case tvCircle
    case tvCircleFill
    case tvMusicNote
    case tvMusicNoteFill
    case desktopComputer
    case gameController
    case gameControllerFill
    case headphones

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Connectivity

/// Connectivity category for sf symbols
public enum Connectivity: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case wifi
    case wifiSlash
    case wifiExclamationmark
    case dotRadiowavesLeftAndRight
    case dotRadiowavesRight
    case radiowavesLeft
    case radiowavesRight
    case antennaRadiowavesLeftAndRight

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Transportation

/// Transportation category for sf symbols
public enum Transportation: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case car
    case carFill
    case tramFill
    case airplane

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Human

/// Human category for sf symbol
public enum Human: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case person
    case personFill
    case personCircle
    case personCircleFill
    case personBadgePlus
    case personBadgePlusFill
    case personBadgeMinus
    case personBadgeMinusFill
    case person2
    case person2Fill
    case person3
    case person3Fill
    case personCropCircle
    case personCropCircleFill
    case personCropCircleBadgePlus
    case personCropCircleFillBadgePlus
    case personCropCircleBadgeMinus
    case personCropCircleFillBadgeMinus
    case personCropCircleBadgeCheckmark
    case personCropCircleFillBadgeCheckmark
    case personCropCircleBadgeXmark
    case personCropCircleFillBadgeXmark
    case personCropCircleBadgeExclam
    case personCropCircleFillBadgeExclam
    case personCropSquare
    case personCropSquareFill
    case eye
    case eyeFill
    case eyeSlash
    case eyeSlashFill
    case rectangleStackPersonCrop
    case rectangleStackPersonCropFill
    case person2SquareStack
    case person2SquareStackFill
    case ear
    case handRaised
    case handRaisedFill
    case handRaisedSlash
    case handRaisedSlashFill
    case handThumbsup
    case handThumbsupFill
    case handThumbsdown
    case handThumbsdownFill
    case handDraw
    case handDrawFill
    case handPointLeft
    case handPointLeftFill
    case handPointRight
    case handPointRightFill

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Nature

/// Nature category for sf symbols
public enum Nature: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case flame
    case flameFill
    case bolt
    case boltFill
    case boltCircle
    case boltCircleFill
    case boltSlash
    case boltSlashFill
    case ant
    case antFill
    case antCircle
    case antCircleFill
    case hare
    case hareFill
    case tortoise
    case tortoiseFill
    case leafArrowCirclepath

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Editing

/// Editing category for editing sf symbols
public enum Editing: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case pencil
    case pencilCircle
    case pencilCircleFill
    case pencilSlash
    case squareAndPencil
    case pencilAndOutline
    case pencilTip
    case pencilTipCropCircle
    case pencilTipCropCircleBadgePlus
    case pencilTipCropCircleBadgeMinus
    case eyeSlash
    case eyeSlashFill
    case signature
    case scissors
    case scissorsBadgeEllipsis
    case wandAndRays
    case wandAndRaysInverse
    case wandAndStars
    case wandAndStarsInverse
    case crop
    case cropRotate
    case dial
    case dialFill
    case paintbrush
    case paintbrushFill
    case bandage
    case bandageFill
    case eyedropper
    case eyedropperHalffull
    case eyedropperFull
    case rotateLeft
    case rotateLeftFill
    case rotateRight
    case rotateRightFill
    case selectionPinInOut
    case sliderHorizontalBelowRectangle
    case perspective
    case aspectratio
    case aspectratioFill
    case skew
    case flipHorizontal
    case flipHorizontalFill
    case scribble
    case lasso
    case sliderHorizontal3
    case circleLefthalfFill
    case circleRighthalfFill

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - TextFormatting

/// Text formatting category for sf symbols
public enum TextFormatting: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case paragraph
    case listDash
    case listBullet
    case listBulletIndent
    case listNumber
    case increaseIndent
    case decreaseIndent
    case decreaseQuotelevel
    case increaseQuotelevel
    case textAlignleft
    case textAligncenter
    case textAlignright
    case textJustify
    case textJustifyleft
    case textJustifyright
    case a
    case textformatSize
    case textformatAlt
    case textformat
    case textformatSubscript
    case textformatSuperscript
    case bold
    case italic
    case underline
    case strikethrough
    case boldItalicUnderline
    case boldUnderline
    case textCursor
    case textformatAbc
    case textformatAbcDottedunderline
    case textformat123
    case textbox

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Media

/// Media category for sf symbols
public enum Media: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case play
    case playFill
    case playCircle
    case playCircleFill
    case playRectangle
    case playRectangleFill
    case pause
    case pauseFill
    case pauseCircle
    case pauseCircleFill
    case pauseRectangle
    case pauseRectangleFill
    case stop
    case stopFill
    case stopCircle
    case stopCircleFill
    case playpause
    case playpauseFill
    case backward
    case backwardFill
    case forward
    case forwardFill
    case backwardEnd
    case backwardEndFill
    case forwardEnd
    case forwardEndFill
    case backwardEndAlt
    case backwardEndAltFill
    case forwardEndAlt
    case forwardEndAltFill
    case shuffle
    case `repeat`
    case repeat1
    case goforward
    case gobackward
    case goforward10
    case gobackward10
    case goforward15
    case gobackward15
    case goforward30
    case gobackward30
    case goforward45
    case gobackward45
    case goforward60
    case gobackward60
    case goforward75
    case gobackward75
    case goforward90
    case gobackward90
    case goforward10Ar
    case gobackward10Ar
    case goforward15Ar
    case gobackward15Ar
    case goforward30Ar
    case gobackward30Ar
    case goforward45Ar
    case gobackward45Ar
    case goforward60Ar
    case gobackward60Ar
    case goforward75Ar
    case gobackward75Ar
    case goforward90Ar
    case gobackward90Ar
    case goforward10Hi
    case gobackward10Hi
    case goforward15Hi
    case gobackward15Hi
    case goforward30Hi
    case gobackward30Hi
    case goforward45Hi
    case gobackward45Hi
    case goforward60Hi
    case gobackward60Hi
    case goforward75Hi
    case gobackward75Hi
    case goforward90Hi
    case gobackward90Hi
    case goforwardPlus
    case gobackwardMinus

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Keyboard

/// Keyboard category for sf symbols
public enum Keyboard: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case command
    case option
    case alt
    case deleteRight
    case deleteRightFill
    case clear
    case clearFill
    case deleteLeft
    case deleteLeftFill
    case shift
    case shiftFill
    case capslock
    case capslockFill
    case escape
    case power
    case globe
    case sunMin
    case sunMinFill
    case sunMax
    case sunMaxFill
    case lightMin
    case lightMax
    case keyboard
    case keyboardCheveronCompactDown
    case eject
    case ejectFill
    case control
    case projective

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Commerce

/// Commerce category for sf symbols
public enum Commerce: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case signature
    case bag
    case bagFill
    case bagBadgePlus
    case bagFillBadgePlus
    case bagBadgeMinus
    case bagFillBadgeMinus
    case cart
    case cartFill
    case cartBadgePlus
    case cartFillBadgePlus
    case cartBadgeMinus
    case cartFillBadgeMinus
    case creditcard
    case creditcardFill

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Time

/// Time category for finding sf symbols
public enum Time: String, SFFinderConvertable {
    // MARK: iOS 13+

    case clock
    case clockFill
    case alarm
    case alarmFill
    case stopwatch
    case stopwatchFill
    case timer

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Health

/// Health category representation
public enum Health: String, SFFinderConvertable {
    // MARK: iOS 13+

    case heart
    case heartFill
    case heartCircle
    case heartCircleFill
    case bandage
    case bandageFill
    case bedDouble
    case bedDoubleFill
    case waveformPathEcg
    case staroflife
    case staroflifeFill

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Shapes

/// Shape category representation
public enum Shapes: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case rectangle
    case rectangleFill
    case shield
    case shieldFill
    case hexagon
    case hexagonFill
    case app
    case appFill
    case triangle
    case triangleFill
    case capsule
    case capsuleFill
    case circle
    case circleFill
    case square
    case squareFill

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Arrows

/// SF Symbols for arrow representation
public enum Arrows: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case arrowshapeTurnUpLeft
    case arrowshapeTurnUpLeftFill
    case arrowshapeTurnUpLeftCircle
    case arrowshapeTurnUpLeftCircleFill
    case arrowshapeTurnUpRight
    case arrowshapeTurnUpRightFill
    case arrowshapeTurnUpRightCircle
    case arrowshapeTurnUpRightCircleFill
    case arrowshapeTurnUpLeft2
    case arrowshapeTurnUpLeft2Fill
    case location
    case locationFill
    case locationSlash
    case locationSlashFill
    case locationNorth
    case locationNorthFill
    case locationCircle
    case locationCircleFill
    case locationNorthLine
    case locationNorthLineFill
    case chevronUp
    case chevronUpCircle
    case chevronUpCircleFill
    case chevronUpSquare
    case chevronUpSquareFill
    case chevronDown
    case chevronDownCircle
    case chevronDownCircleFill
    case chevronDownSquare
    case chevronDownSquareFill
    case chevronLeft
    case chevronLeftCircle
    case chevronLeftCircleFill
    case chevronLeftSquare
    case chevronLeftSquareFill
    case chevronRight
    case chevronRightCircle
    case chevronRightCircleFill
    case chevronRightSquare
    case chevronRightSquareFill
    case chevronLeft2
    case chevronRight2
    case chevronUpChevronDown
    case chevronCompactUp
    case chevronCompactDown
    case chevronCompactLeft
    case chevronCompactRight
    case arrowUp
    case arrowUpCircle
    case arrowUpCircleFill
    case arrowUpSquare
    case arrowUpSquareFill
    case arrowDown
    case arrowDownCircle
    case arrowDownCircleFill
    case arrowDownSquare
    case arrowDownSquareFill
    case arrowLeft
    case arrowLeftCircle
    case arrowLeftCircleFill
    case arrowLeftSquare
    case arrowLeftSquareFill
    case arrowRight
    case arrowRightCircle
    case arrowRightCircleFill
    case arrowRightSquare
    case arrowRightSquareFill
    case arrowUpLeft
    case arrowUpLeftCircle
    case arrowUpLeftCircleFill
    case arrowUpLeftSquare
    case arrowUpLeftSquareFill
    case arrowUpRight
    case arrowUpRightCircle
    case arrowUpRightCircleFill
    case arrowUpRightSquare
    case arrowUpRightSquareFill
    case arrowDownLeft
    case arrowDownLeftCircle
    case arrowDownLeftCircleFill
    case arrowDownLeftSquare
    case arrowDownLeftSquareFill
    case arrowDownRight
    case arrowDownRightCircle
    case arrowDownRightCircleFill
    case arrowDownRightSquare
    case arrowDownRightSquareFill
    case arrowUpArrowDown
    case arrowUpArrowDownCircle
    case arrowUpArrowDownCircleFill
    case arrowUpArrowDownSquare
    case arrowUpArrowDownSquareFill
    case arrowRightArrowLeft
    case arrowRightArrowLeftCircle
    case arrowRightArrowLeftCircleFill
    case arrowRightArrowLeftSquare
    case arrowRightArrowLeftSquareFill
    case arrowTurnRightUp
    case arrowTurnRightDown
    case arrowTurnDownLeft
    case arrowTurnDownRight
    case arrowTurnLeftUp
    case arrowTurnLeftDown
    case arrowTurnUpLeft
    case arrowTurnUpRight
    case arrowUturnUp
    case arrowUturnUpCircle
    case arrowUturnUpCircleFill
    case arrowUturnUpSquare
    case arrowUturnUpSquareFill
    case arrowUturnDown
    case arrowUturnDownCircle
    case arrowUturnDownCircleFill
    case arrowUturnDownSquare
    case arrowUturnDownSquareFill
    case arrowUturnLeft
    case arrowUturnLeftCircle
    case arrowUturnLeftCircleFill
    case arrowUturnLeftCircleBadgeEllipsis
    case arrowUturnLeftSquare
    case arrowUturnLeftSquareFill
    case arrowUturnRight
    case arrowUturnRightCircle
    case arrowUturnRightCircleFill
    case arrowUturnRightSquare
    case arrowUturnRightSquareFill
    case arrowUpAndDown
    case arrowUpAndDownCircle
    case arrowUpAndDownCircleFill
    case arrowUpAndDownSquare
    case arrowUpAndDownSquareFill
    case arrowLeftAndRight
    case arrowLeftAndRightCircle
    case arrowLeftAndRightCircleFill
    case arrowLeftAndRightSquare
    case arrowLeftAndRightSquareFill
    case arrowUpToLineAlt
    case arrowUpToLine
    case arrowDownToLineAlt
    case arrowDownToLine
    case arrowLeftToLineAlt
    case arrowLeftToLine
    case arrowRightToLineAlt
    case arrowRightToLine
    case `return`
    case arrowClockwise
    case arrowClockwiseCircle
    case arrowClockwiseCircleFill
    case arrowCounterclockwise
    case arrowCounterclockwiseCircle
    case arrowCounterclockwiseCircleFill
    case arrowUpLeftAndArrowDownRight
    case arrowDownRightAndArrowUpLeft
    case arrow2Squarepath
    case arrow2Circlepath
    case arrow2CirclepathCircle
    case arrow2CirclepathCircleFill
    case arrow3Trianglepath
    case leafArrowCirclepath
    case arrowUpRightDiamond
    case arrowUpRightDiamondFill
    case arrowMerge
    case arrowSwap
    case arrowBranch
    case arrowtriangleUp
    case arrowtriangleUpFill
    case arrowtriangleUpCircle
    case arrowtriangleUpCircleFill
    case arrowtriangleUpSquare
    case arrowtriangleUpSquareFill
    case arrowtriangleDown
    case arrowtriangleDownFill
    case arrowtriangleDownCircle
    case arrowtriangleDownCircleFill
    case arrowtriangleDownSquare
    case arrowtriangleDownSquareFill
    case arrowtriangleLeft
    case arrowtriangleLeftFill
    case arrowtriangleLeftCircle
    case arrowtriangleLeftCircleFill
    case arrowtriangleLeftSquare
    case arrowtriangleLeftSquareFill
    case arrowtriangleRight
    case arrowtriangleRightFill
    case arrowtriangleRightCircle
    case arrowtriangleRightCircleFill
    case arrowtriangleRightSquare
    case arrowtriangleRightSquareFill

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Indices

/// SFSymbols for indices category symbols
public enum Indices: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case questionmarkCircle
    case questionmarkCircleFill
    case questionmarkSquare
    case questionmarkSquareFill
    case exclamationmarkCircle
    case exclamationmarkCircleFill
    case exclamationmarkSquare
    case exclamationmarkSquareFill

    /// Supported character for find alphabet symbols
    public enum Character: String {
        case a
        case b
        case c
        case d
        case e
        case f
        case g
        case h
        case i
        case j
        case k
        case l
        case m
        case n
        case o
        case p
        case q
        case r
        case s
        case t
        case u
        case v
        case w
        case x
        case y
        case z
    }

    /// Available currency for the currency symbol finder
    public enum AvailableCurrency: String {
        case dollar
        case cent
        case yen
        case sterling
        case franc
        case florin
        case turkishlira
        case ruble
        case euro
        case dong
        case indianrupee
        case tenge
        case peseta
        case peso
        case kip
        case won
        case lira
        case austral
        case hryvnia
        case naira
        case guarani
        case coloncurrency
        case cedi
        case cruzeiro
        case tugrik
        case mill
        case sheqel
        case manat
        case rupee
        case baht
        case lari
        case bitcoin
    }

    /// SFSymbols for retrieving currency symbols
    public enum Currency: SFFinderConvertable, SFSymbolsHasValidator {
        // MARK: iOS 13+

        case circle(currency: AvailableCurrency)
        case circleFill(currency: AvailableCurrency)
        case square(currency: AvailableCurrency)
        case squareFill(currency: AvailableCurrency)
    }

    /// SFSymbols for retrieving the number symbols
    /// Using Generic type in case want to put 01 or 02 as a String instead Int
    public enum Number<Type>: SFFinderConvertable, SFSymbolsHasValidator {
        // MARK: iOS 13+

        case circle(number: Type)
        case circleFill(number: Type)
        case altCircle(number: Type)
        case altCircleFill(number: Type)
        case square(number: Type)
        case squareFill(number: Type)
        case altSquare(number: Type)
        case altSquareFill(number: Type)
    }

    /// SFSymbols for getting the alphabet symbols
    public enum Alphabet: SFFinderConvertable, SFSymbolsHasValidator {
        // MARK: iOS 13+

        case circle(character: Character)
        case circleFill(character: Character)
        case square(character: Character)
        case squareFill(character: Character)
    }

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Math

/// SFSymbol for mathematics operation
public enum Math: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 13+

    case sum
    case percent
    case function
    case plus
    case plusCircle
    case plusCircleFill
    case plusSquare
    case plusSquareFill
    case minus
    case minusCircle
    case minusCircleFill
    case minusSquare
    case minusSquareFill
    case plusminus
    case plusminusCircle
    case plusminusCircleFill
    case plusSlashMinus
    case minusSlashPlus
    case multiply
    case multiplyCircle
    case multiplyCircleFill
    case multiplySquare
    case multiplySquareFill
    case divide
    case divideCircle
    case divideCircleFill
    case divideSquare
    case divideSquareFill
    case equal
    case equalCircle
    case equalCircleFill
    case equalSquare
    case equalSquareFill
    case lessthan
    case lessthanCircle
    case lessthanCircleFill
    case lessthanSquare
    case lessthanSquareFill
    case greaterthan
    case greaterthanCircle
    case greaterthanCircleFill
    case greaterthanSquare
    case greaterthanSquareFill
    case number
    case numberCircle
    case numberCircleFill
    case numberSquare
    case numberSquareFill
    case xSquareroot

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Gaming

/// SFSymbol for gaming icon
public enum Gaming: String, SFFinderConvertable, SFSymbolsEnum {
    // MARK: iOS 14+
    case circleGridCross
    case circleGridCrossFill
    case circleGridCrossLeftFill
    case circleGridCrossUpFill
    case circleGridCrossRightFill
    case circleGridCrossDownFill
    case circleSquare
    case circleFillSquareFill
    case house
    case houseFill
    case houseCircle
    case houseCircleFill
    case rectangleOnRectangle
    case rectangleFillOnRectangleFill
    case rectangleFillOnRectangleFillCircle
    case rectangleFillOnRectangleFillCircleFill
    case gamecontroller
    case gamecontrollerFill
    case lJoystick
    case lJoystickFill
    case rJoystick
    case rJoystickFill
    case lJoystickDown
    case lJoystickDownFill
    case rJoystickDown
    case rJoystickDownFill
    case dpad
    case dpadFill
    case dpadLeftFill
    case dpadUpFill
    case dpadRightFill
    case dpadDownFill
    case circleCircle
    case circleCircleFill
    case squareCircle
    case squareCircleFill
    case triangleCircle
    case triangleCircleFill
    case rectangleRoundedtop
    case rectangleRoundedtopFill
    case rectangleRoundedbottom
    case rectangleRoundedbottomFill
    case lRectangleRoundedbottom
    case lRectangleRoundedbottomFill
    case l1RectangleRoundedbottom
    case l1RectangleRoundedbottomFill
    case l2RectangleRoundedtop
    case l2RectangleRoundedtopFill
    case rRectangleRoundedbottom
    case rRectangleRoundedbottomFill
    case r1RectangleRoundedbottom
    case r1RectangleRoundedbottomFill
    case r2RectangleRoundedtop
    case r2RectangleRoundedtopFill
    case lbRectangleRoundedbottom
    case lbRectangleRoundedbottomFill
    case rbRectangleRoundedbottom
    case rbRectangleRoundedbottomFill
    case ltRectangleRoundedtop
    case ltRectangleRoundedtopFill
    case rtRectangleRoundedtop
    case rtRectangleRoundedtopFill
    case zlRectangleRoundedtop
    case zlRectangleRoundedtopFill
    case zrRectangleRoundedtop
    case zrRectangleRoundedtopFill
    case lineHorizontal3Circle
    case lineHorizontal3CircleFill

    var enumRawValue: String {
        return rawValue
    }

}

// MARK: - Multicolor

/// SFSymbol for multicolor icon
public enum Multicolor: String, SFFinderConvertable, SFSymbolsEnum {

    // MARK: iOS 14+

    case squareGrid3x1FolderBadgePlus
    case squareGrid3x1FolderFillBadgePlus
    case paperplaneCircleFill
    case externaldriveBadgePlus
    case externaldriveFillBadgePlus
    case externaldriveBadgeMinus
    case externaldriveFillBadgeMinus
    case externaldriveBadgeCheckmark
    case externaldriveFillBadgeCheckmark
    case externaldriveBadgeXmark
    case externaldriveFillBadgeXmark
    case docBadgePlus
    case docFillBadgePlus
    case noteTextBadgePlus
    case arrowshapeTurnUpBackwardCircleFill
    case arrowshapeTurnUpForwardCircleFill
    case arrowshapeTurnUpLeft2CircleFill
    case arrowshapeTurnUpBackward2CircleFill
    case bookmarkCircleFill
    case linkBadgePlus
    case personFillBadgePlus
    case personFillBadgeMinus
    case personCropCircleBadgeExclamationmark
    case personCropCircleFillBadgeExclamationmark
    case thermometerSunFill
    case filemenuAndSelection
    case badgePlusRadiowavesForward
    case circlebadgeFill
    case teletypeCircleFill
    case videoFillBadgePlus
    case videoBadgeCheckmark
    case videoFillBadgeCheckmark
    case carCircleFill
    case crossCircleFill
    case leafFill
    case rectangleBadgePlus
    case rectangleFillBadgePlus
    case rectangleBadgeMinus
    case rectangleFillBadgeMinus
    case macwindowBadgePlus
    case earBadgeCheckmark
    case giftCircleFill
    case airplaneCircleFill
    case hourglassBadgePlus
    case atCircleFill
    case arrowTriangleTurnUpRightCircleFill

    // MARK: iOS 13+
    case pencilTipCropCircleBadgePlus
    case pencilTipCropCircleBadgeMinus
    case trashCircleFill
    case folderCircleFill
    case folderBadgePlus
    case folderFillBadgePlus
    case folderBadgeMinus
    case folderFillBadgeMinus
    case calendarCircleFill
    case calendarBadgePlus
    case calendarBadgeMinus
    case arrowshapeTurnUpLeftCircleFill
    case arrowshapeTurnUpRightCircleFill
    case bookmarkFill
    case paperclip
    case linkCircleFill
    case personBadgePlus
    case personBadgeMinus
    case personCropCircleBadgePlus
    case personCropCircleFillBadgePlus
    case personCropCircleBadgeMinus
    case personCropCircleFillBadgeMinus
    case personCropCircleBadgeCheckmark
    case personCropCircleFillBadgeCheckmark
    case personCropCircleBadgeXmark
    case personCropCircleFillBadgeXmark
    case sunMaxFill
    case sunriseFill
    case sunsetFill
    case sunDustFill
    case sunHazeFill
    case moonFill
    case moonCircleFill
    case sparkles
    case moonStarsFill
    case cloudFill
    case cloudDrizzleFill
    case cloudRainFill
    case cloudHeavyrainFill
    case cloudFogFill
    case cloudHailFill
    case cloudSnowFill
    case cloudSleetFill
    case cloudBoltFill
    case cloudBoltRainFill
    case cloudSunFill
    case cloudSunRainFill
    case cloudSunBoltFill
    case cloudMoonFill
    case cloudMoonRainFill
    case cloudMoonBoltFill
    case smokeFill
    case wind
    case windSnow
    case snow
    case tornado
    case tropicalstorm
    case hurricane
    case thermometerSnowflake
    case thermometer
    case exclamationmarkTriangleFill
    case dropTriangleFill
    case memoriesBadgePlus
    case memoriesBadgeMinus
    case badgePlusRadiowavesRight
    case starFill
    case starCircleFill
    case flagFill
    case flagCircleFill
    case locationCircleFill
    case bellCircleFill
    case messageCircleFill
    case phoneCircleFill
    case phoneBadgePlus
    case phoneFillBadgePlus
    case phoneDownCircleFill
    case videoCircleFill
    case videoBadgePlus
    case envelopeCircleFill
    case bagBadgePlus
    case bagFillBadgePlus
    case bagBadgeMinus
    case bagFillBadgeMinus
    case cartBadgePlus
    case cartFillBadgePlus
    case cartBadgeMinus
    case cartFillBadgeMinus
    case gaugeBadgePlus
    case gaugeBadgeMinus
    case wifi
    case pinCircleFill
    case mappinCircleFill
    case rectangleBadgeCheckmark
    case rectangleFillBadgeCheckmark
    case rectangleBadgeXmark
    case rectangleFillBadgeXmark
    case rectangleStackBadgePlus
    case rectangleStackFillBadgePlus
    case rectangleStackBadgeMinus
    case rectangleStackFillBadgeMinus
    case alarm
    case timer
    case waveformPathBadgePlus
    case waveformPathBadgeMinus
    case gift
    case giftFill
    case textBadgePlus
    case textBadgeMinus
    case textBadgeCheckmark
    case textBadgeXmark
    case infoCircleFill
    case atBadgePlus
    case atBadgeMinus
    case plusCircleFill
    case minusCircleFill
    case xmarkOctagonFill
    case checkmarkCircleFill

    var enumRawValue: String {
        return rawValue
    }
}
