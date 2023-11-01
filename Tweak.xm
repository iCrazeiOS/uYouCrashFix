#import <UIKit/UIKit.h>

@interface YTSingleVideoController : NSObject
-(float)playbackRate;
-(void)setPlaybackRate:(float)arg1;
@end

@interface YTPlayerViewController : UIViewController
-(YTSingleVideoController *)activeVideo;
@end


%hook YTPlayerViewController
%new
-(float)currentPlaybackRateForVarispeedSwitchController:(id)arg1 {
	return [[self activeVideo] playbackRate];
}

%new
-(void)varispeedSwitchController:(id)arg1 didSelectRate:(float)arg2 {
	[[self activeVideo] setPlaybackRate:arg2];
}
%end
