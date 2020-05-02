//
//  HTMLScreensaverConfigureSheet.m
//  HTMLScreensaver
//  Copyright © 2020 fordApps. All rights reserved.
//

#import "HTMLScreensaverConfigureSheet.h"

@interface HTMLScreensaverConfigureSheet ()
@property (weak) IBOutlet NSButton *buttonOk;
@property (weak) IBOutlet NSTextField *copyrightLabel;
@property (weak) IBOutlet NSTextField *executableLabel;
@end

@implementation HTMLScreensaverConfigureSheet

- (void)windowDidLoad {
    [super windowDidLoad];
    NSDictionary *infoDictionary;
    infoDictionary = [[NSBundle bundleForClass:self.class] infoDictionary];
    NSString *_executableValue = [infoDictionary objectForKey:@"CFBundleExecutable"];
    NSString *_copyrightValue = [infoDictionary objectForKey:@"NSHumanReadableCopyright"];
    _executableLabel.stringValue = _executableValue;
    _copyrightLabel.stringValue = _copyrightValue;
}

- (id)initWithWindowNibName:(NSString *)windowNibName owner:(id)owner
{
    self = [super initWithWindowNibName:windowNibName owner:owner];
    return self;
}

- (IBAction)closeConfigureSheet:(NSButton *)sender
{
    [[NSApplication sharedApplication] endSheet:[self window] returnCode:NSModalResponseOK];
}

@end
