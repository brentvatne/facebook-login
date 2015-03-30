#import "RCTVideoPlayerManager.h"
#import "RCTVideoPlayer.h"
#import "RCTBridge.h"

@implementation RCTVideoPlayerManager

@synthesize bridge = _bridge;

- (UIView *)view
{
    return [[RCTVideoPlayer alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(src, NSString);
RCT_EXPORT_VIEW_PROPERTY(resizeMode, NSInteger);

@end
