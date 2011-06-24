//
//  iosclipboard.mm
//  iosclipboard
//
//  Created by Trevor K DeVore on 6/24/11.
//  Copyright 2011 Blue Mango Learning Systems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIPasteboard.h>
//#include <LiveCode.h> ## this doesn't use any LiveCode APIs

////////////////////////////////////////////////////////////////////////////////

// NSData is a UTF8 string.
void copyTextToClipboard(NSData* textToCopy)
{
    //NSLog(@"copyTextToClipboard called");
    UIPasteboard *gpBoard = [UIPasteboard generalPasteboard];   
    [gpBoard setData:textToCopy forPasteboardType:@"public.utf8-plain-text"];
}