(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:NSStatusItem.h"
; at Sunday July 2,2006 7:31:00 pm.
; 
;         NSStatusItem.h
;         Application Kit
;         Copyright (c) 1997-2003, Apple Computer, Inc.
;         All rights reserved.
; 

; #import <Foundation/NSObject.h>

; #import <Foundation/NSGeometry.h>
(defrecord _SBIFlags
   (customView :UInt32)
   (highlightMode :UInt32)
   (hasAlternateImage :UInt32)
   (reserved :UInt32)
)
#| @INTERFACE 
NSStatusItem : NSObject
{
 private
    NSStatusBar* _fStatusBar;
    float        _fLength;
    NSWindow*    _fWindow;
    NSView*      _fView;
    int          _fPriority;
    _SBIFlags	 _fFlags;
    long         _fReserved1;
    long         _fReserved2;
    long         _fReserved3;
    long         _fReserved4;
}

- (NSStatusBar*) statusBar;

- (float) length;
- (void) setLength:(float)length;

|#
#| @INTERFACE 
NSStatusItem (NSStatusItemCommon)

- (SEL) action;
- (void) setAction:(SEL)action;

- (id) target;
- (void) setTarget:(id)target;

- (NSString*) title;
- (void) setTitle:(NSString*)title;

- (NSAttributedString*) attributedTitle;
- (void) setAttributedTitle:(NSAttributedString*)title;

- (NSImage*) image;
- (void) setImage:(NSImage*)image;

#if MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_3
- (NSImage *)alternateImage;
- (void)setAlternateImage:(NSImage*)image;
#endif

- (NSMenu*) menu;
- (void) setMenu:(NSMenu*)menu;

- (BOOL) isEnabled;
- (void) setEnabled:(BOOL)enabled;

- (NSString*) toolTip;
- (void) setToolTip:(NSString*)toolTip;

- (void) setHighlightMode:(BOOL) highlightMode;
- (BOOL) highlightMode;

- (void) sendActionOn:(int)mask;

#if MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_3
- (void) popUpStatusItemMenu:(NSMenu*)menu;
- (void) drawStatusBarBackgroundInRect:(NSRect)rect withHighlight:(BOOL)highlight;
#endif

|#
#| @INTERFACE 
NSStatusItem (NSStatusItemView)

- (NSView*) view;
- (void) setView:(NSView*)view;

|#

(provide-interface "NSStatusItem")