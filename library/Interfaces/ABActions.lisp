(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:ABActions.h"
; at Sunday July 2,2006 7:22:42 pm.
; 
;   ABActions.h
;   AddressBook Framework
; 
;   Copyright (c) 2003 Apple Computer. All rights reserved.
; 

; #if MAC_OS_X_VERSION_10_3 <= MAC_OS_X_VERSION_MAX_ALLOWED

; #import <Foundation/Foundation.h>
;  ================================================================
; 	Action Support
;  ================================================================
;  This API allows developers to populate AddressBook.app's roll-over menus with custom
;  entries. Your NSBundle must implement actionProperty:, titleForPerson:identifier: and
;  performActionForPerson:identifier:.
; 
;  actionProperty: Return the ABProperty this action applies to. Only items with labels
;  may have actions at this time. (emails, phones, birthdays, etc)
; 
;  titleForPerson:identifier: This method is passed a person and, if actionProperty: returned
;  a multi-value property, an identifier. Simple actions will return a localized title.
;  However, more complex actions may choose to tweak their title slightly based on the
;  specific item the user has selected.
; 
;  shouldEnableActionForPerson:identifier: Return YES if your action should be enabled
;  for the specific item the user has selected. This method is optional. Leaving it
;  unimplemented will result in your action being enabled at all times.
; 
;  performActionForPerson:identifier: This method is called when the user chooses your
;  action from the roll-over menu. It is passed the ABPerson and (if applicable) multi-
;  value of the specific item rolled-over.
; 
;  Action plugins are stored in ~/Library/Address Book Plug-Ins or /Library/Address Book Plug-Ins
;  The Principle class of the NSBundle is the object that is expected to implement the
;  methods below.
;  There can be only 1 Action plug in per bundle.
#| @INTERFACE 
NSObject (ABActionDelegate)
- (NSString *)actionProperty;
- (NSString *)titleForPerson:(ABPerson *)person identifier:(NSString *)identifier;
- (void)performActionForPerson:(ABPerson *)person identifier:(NSString *)identifier;

    - (BOOL)shouldEnableActionForPerson:(ABPerson *)person identifier:(NSString *)identifier;
|#

; #endif


(provide-interface "ABActions")