//
//  WordClock.m
//  Word Clock
//
//  Created by Jon Pearse on 23/05/2020.
//  Copyright © 2020 Jon Pearse. All rights reserved.
//

#import "WordClock.h"
#import <WebKit/WebKit.h>

@implementation WordClock

- (id)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    if (!(self = [super initWithFrame:frame isPreview:isPreview])) return nil;
    
    // URL for the HTML file
    NSURL* indexHTMLDocumentURL = [NSURL fileURLWithPath:[[NSBundle bundleForClass:self.class].resourcePath stringByAppendingString:@"/HTML/index.html"] isDirectory:NO];

    // create a webview
    // @TODO: switch this to use WKWebView
    WebView* webView = [[WebView alloc] initWithFrame:frame];
    webView.drawsBackground = NO;
    [webView.mainFrame loadRequest:[NSURLRequest requestWithURL:indexHTMLDocumentURL]];
    
    [self addSubview:webView];

    return self;
}

- (BOOL)hasConfigureSheet
{
    return NO;
    
}

- (NSWindow *)configureSheet
{
    return nil;
}

@end
