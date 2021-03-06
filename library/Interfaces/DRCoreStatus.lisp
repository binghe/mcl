(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:DRCoreStatus.h"
; at Sunday July 2,2006 7:27:36 pm.
; 
;      File:       DiscRecordingEngine/DRCoreStatus.h
;  
;      Contains:   Status dictionary content keys.
;  
;      Version:    Technology: Mac OS X
;                  Release:    Mac OS X
;  
;      Copyright:  (c) 2002-2003 by Apple Computer, Inc., all rights reserved
;  
;      Bugs?:      For bug reports, consult the following page on
;                  the World Wide Web:
;  
;                      http://developer.apple.com/bugreporter/
;  
; 
; #ifndef _H_DRCoreStatus
; #define _H_DRCoreStatus

; #if PRAGMA_ONCE
#| ; #pragma once
 |#

; #endif

; #ifndef __CORESERVICES__
#| #|
#include <CoreServicesCoreServices.h>
#endif
|#
 |#
; #ifndef __AVAILABILITYMACROS__

(require-interface "AvailabilityMacros")

; #endif

; #pragma mark Common status dictionary keys
; !
; 	@const kDRStatusStateKey
; 	@abstract	The state of the burn or erase operation.
; 	@discussion	A key for the status dictionaries. The value of this key is a CFString object indicating 
; 				the current state of the burn or erase operation.
; 
(def-mactype :kDRStatusStateKey (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusPercentCompleteKey
; 	@abstract	The burn or erase operation's percentage of completion.
; 	@discussion	A key for the status dictionaries. The value of this key is 
; 				a CFNumber object containing the precentage of completion for the burn 
; 				or erase operation, expressed as a foating point number from 0 to 1.
; 
(def-mactype :kDRStatusPercentCompleteKey (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; #pragma mark Burn status dictionary keys
; !
; 	@const kDRStatusCurrentSpeedKey
; 	@abstract	The current burn or erase speed.
; 	@discussion	A key for the burn status dictionary. The value of this key is 
; 				a CFNumber object containing the current burn or erase speed.
; 
(def-mactype :kDRStatusCurrentSpeedKey (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusCurrentSessionKey
; 	@abstract	The number of the burn session.
; 	@discussion	A key for the burn status dictionary. The value of this key is 
; 				a CFNumber object containing the number of the current burn session.
; 
(def-mactype :kDRStatusCurrentSessionKey (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusCurrentTrackKey
; 	@abstract	The number of the track being burned.
; 	@discussion	A key for the status dictionaries. The value of this key is 
; 				a CFNumber object containing the number of the track being burned.
; 
(def-mactype :kDRStatusCurrentTrackKey (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusTotalSessionsKey
; 	@abstract	The total number of burn sessions.
; 	@discussion	A key for the status dictionaries. The value of this key is 
; 				a CFNumber object containing the total number of sessions being burned.
; 
(def-mactype :kDRStatusTotalSessionsKey (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusTotalTracksKey
; 	@abstract	The number of tracks in the current session.
; 	@discussion	A key for the status dictionaries. The value of this key is 
; 				a CFNumber object containing the total number of tracks being burned in the current session.
; 
(def-mactype :kDRStatusTotalTracksKey (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; #pragma mark Erase status dictionary keys
; !
; 	@const kDRStatusEraseTypeKey
; 	@abstract	The type of erase operation.
; 	@discussion	A key for the erase status dictionary. The value of this key is 
; 				a CFString object containing the type of erase operation -- either <tt>kDREraseTypeQuick</tt>
; 				or <tt>kDREraseTypeComplete</tt>.
; 
(def-mactype :kDRStatusEraseTypeKey (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; #pragma mark Common values for kDRStatusStateKey
; !
; 	@const kDRStatusStateNone
; 	@abstract	The burn or erase operation has not begun.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> dictionary key. This value indicates the
; 				burn or erase operation has not yet begun.
; 
(def-mactype :kDRStatusStateNone (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusStatePreparingKey
; 	@abstract	The burn or erase operation is preparing to begin.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> dictionary key. This value indicates the
; 				burn or erase operation is preparing to begin.
; 
(def-mactype :kDRStatusStatePreparing (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusStateVerifying
; 	@abstract	The burn or erase operation is being verified.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> dictionary key. This value indicates the
; 				operation is verifying what it did.
; 
(def-mactype :kDRStatusStateVerifying (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusStateDoneKey
; 	@abstract	The burn or erase operation finished successfully.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> dictionary key. This value indicates the
; 				burn or erase operation finished and succeeded.
; 
(def-mactype :kDRStatusStateDone (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusStateFailedKey
; 	@abstract	The burn or erase operation failed.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> dictionary key. This value indicates the
; 				burn or erase operation finished but failed.
; 
(def-mactype :kDRStatusStateFailed (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; #pragma mark Burn dictionary values for kDRStatusStateKey
; !
; 	@const kDRStatusStateSessionOpen
; 	@abstract	The burn session is opening.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> key in the burn status dictionary. 
; 				This value indicates the burn engine is opening a session on disc. The number of the session being opened
; 				is available as the value for the <tt>kDRStatusCurrentSessionKey</tt> dictionary key.
; 
(def-mactype :kDRStatusStateSessionOpen (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusStateTrackOpen
; 	@abstract	The burn session is opening a track.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> key in the burn status dictionary. 
; 				This value indicates the burn engine is opening a track on disc. The number of the track being opened
; 				is available as the value for the <tt>kDRStatusCurrentTrackKey</tt> dictionary key.
; 
(def-mactype :kDRStatusStateTrackOpen (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusStateTrackWrite
; 	@abstract	The burn session is writing a track.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> key in the burn status dictionary. 
; 				This value indicates the burn engine is writing a track on disc. The number of the track being written
; 				is available as the value for the in <tt>kDRStatusCurrentTrackKey</tt> dictionary key.
; 
(def-mactype :kDRStatusStateTrackWrite (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusStateTrackClose
; 	@abstract	The burn session is closing a track.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> key in the burn status dictionary. 
; 				This value indicates the burn engine is closing a track on disc. The number of the track being closed
; 				is available as the value for the <tt>kDRStatusCurrentTrackKey</tt> dictionary key.
; 
(def-mactype :kDRStatusStateTrackClose (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusStateSessionClose
; 	@abstract	The burn session is closing.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> key in the burn status dictionary. 
; 				This value indicates the burn engine is closing a session on disc. The number of the session being closed
; 				is available as the value for the <tt>kDRStatusCurrentSessionKey</tt> dictionary key.
; 
(def-mactype :kDRStatusStateSessionClose (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; !
; 	@const kDRStatusStateFinishing
; 	@abstract	The burn session is finishing.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> key in the burn status dictionary. 
; 				This value indicates the burn is finishing--closing the last session, writing the TOC, and so on.
; 
(def-mactype :kDRStatusStateFinishing (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER
; #pragma mark Erase dictionary values for kDRStatusStateKey
; !
; 	@const kDRStatusStateErasing
; 	@abstract	The disc is being erased.
; 	@discussion	A value for the <tt>kDRStatusStateKey</tt> key in the erase status dictionary. 
; 				This value indicates the erase is currently in progress.
; 
(def-mactype :kDRStatusStateErasing (find-mactype ':CFStringRef)); AVAILABLE_MAC_OS_X_VERSION_10_2_AND_LATER

; #endif 	/* _H_DRCoreStatus */


(provide-interface "DRCoreStatus")