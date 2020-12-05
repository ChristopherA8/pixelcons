#include <UIKit/UIKit.h>
#include <Foundation/Foundation.h>

@interface SBIconImageView
@property (nonatomic, assign, readwrite, setter=is_setBlurRadius:) CGFloat is_blurRadius;
@end

%hook SBIconImageView
-(void)layoutSubviews {
	[self is_setBlurRadius:0.9];
}
%end