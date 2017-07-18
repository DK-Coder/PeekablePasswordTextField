//
//  DKPeekablePasswordTextField.m
//  PeekablePasswordTextField
//
//  Created by NSLog on 2017/7/17.
//  Copyright © 2017年 DK-Coder. All rights reserved.
//

#import "DKPeekablePasswordTextField.h"

@interface DKPeekablePasswordTextField ()
{
    UIImageView *eyeImageView;
}
@end


@implementation DKPeekablePasswordTextField

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self sharedInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self sharedInit];
    }
    return self;
}

- (void)sharedInit
{
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, 10.f, 0.f)];
    self.leftView = leftView;
    self.leftViewMode = UITextFieldViewModeAlways;
    
    UIView *rightView = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0.f, 50.f, 0.f)];
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(peekPasswordImagePressed)];
    [rightView addGestureRecognizer:tapGesture];
    self.rightView = rightView;
    self.rightViewMode = UITextFieldViewModeAlways;
    
    eyeImageView = [[UIImageView alloc] init];
    [rightView addSubview:eyeImageView];
    
    self.backgroundColor = [UIColor whiteColor];
    self.secureTextEntry = YES;
}

- (void)peekPasswordImagePressed
{
    self.secureTextEntry = !self.secureTextEntry;
}

- (void)setSecureTextEntry:(BOOL)secureTextEntry
{
    [super setSecureTextEntry:secureTextEntry];
    [self setupImage];
}

- (void)setupImage
{
    NSString *imageName = self.secureTextEntry ? @"images.bundle/eye-closed" : @"images.bundle/eye-open";
    UIImage *image = [UIImage imageNamed:imageName];
    eyeImageView.image = image;
    
    static CGFloat widthForImage = 30.f;
    CGFloat heightForImage = widthForImage * image.size.height / image.size.width;
    eyeImageView.frame = CGRectMake((CGRectGetWidth(self.rightView.bounds) - widthForImage) / 2, -heightForImage / 2, widthForImage, heightForImage);
}
@end
