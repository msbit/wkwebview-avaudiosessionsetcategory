#import "ViewController.h"

#import <AVFoundation/AVFoundation.h>
#import <WebKit/WebKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  WKWebView *wb = [[WKWebView alloc] initWithFrame:self.view.frame];
  [wb loadHTMLString:
   @" <html> \
        <head>\
          <title>HTTP Live Streaming Example</title>\
        </head>\
        <body>\
          <video\
            src=\"http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8\"\
            height=\"300\" width=\"400\">\
          </video>\
        </body>\
      </html>" baseURL:nil];
  [self.view addSubview:wb];
  NSString *category = [[AVAudioSession sharedInstance] category];
  NSLog(@"category: %@\n", category);
}

@end
