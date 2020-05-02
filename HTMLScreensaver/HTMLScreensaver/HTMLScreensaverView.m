//
//  HTMLScreensaverView.m
//  HTMLScreensaver
//  Copyright © 2020 fordApps. All rights reserved.
//

#import "HTMLScreensaverConfigureSheet.h"
#import "HTMLScreensaverView.h"
#import <WebKit/WebKit.h>

@implementation HTMLScreensaverView

WebView *_webView;
NSString *_url;

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
    if (self) {
        [self configureWebView];
        [self loadWebView];
    }
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return YES;
}

- (NSWindow*)configureSheet
{
    if (!configureSheet)
    {
        configureSheet = [[HTMLScreensaverConfigureSheet alloc] initWithWindowNibName:@"HTMLScreensaverConfigureSheet"];
    }
    return [configureSheet window];
}

- (void)configureWebUrl
{
    _url = [NSString stringWithFormat:@"file://%@/html/index.html", [[NSBundle bundleForClass:[self class]] resourcePath]];
}

- (void)configureWebView
{
    _webView = [[WebView alloc] initWithFrame:[self bounds]];
    [_webView setShouldUpdateWhileOffscreen:YES];
    [_webView setAutoresizingMask:NSViewWidthSizable|NSViewHeightSizable];
    [_webView setAutoresizesSubviews:YES];
    [_webView setDrawsBackground:NO];
    [_webView setMaintainsBackForwardList:NO];
    [self addSubview:_webView];
}

- (void)initialize
{
    [self configureWebUrl];
    [self configureWebView];
}

- (void)loadWebView
{
    [_webView setMainFrameURL:[_url stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]];
    [_webView reloadFromOrigin:nil];
}
@end
