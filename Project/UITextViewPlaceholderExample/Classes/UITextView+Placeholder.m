//
//  UITextView+Placeholder.m
//  Test
//
//  Created by 高泽民 on 16/12/7.
//  Copyright © 2016年 zm. All rights reserved.
//

#import "UITextView+Placeholder.h"
#import <objc/runtime.h>

static const char *kPlaceholderKey = "kPlaceholderKey";
static const char *kPlaceholderLabelKey = "kPlaceholderLabelKey";

@interface UITextView (PlaceholderLabel)<UITextViewDelegate>

@property (nonatomic, strong) UILabel *placeholderLabel;

@end

@implementation UITextView (Placeholder)

- (UILabel *)placeholderLabel{
    return objc_getAssociatedObject(self, kPlaceholderLabelKey);
}

- (void)setPlaceholderLabel:(UILabel *)placeholderLabel{
    objc_setAssociatedObject(self, kPlaceholderLabelKey, placeholderLabel, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)placeholder{
    return objc_getAssociatedObject(self, kPlaceholderKey);
}

- (void)setPlaceholder:(NSString *)placeholder{
    objc_setAssociatedObject(self, kPlaceholderKey, placeholder, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    UILabel *label = [[UILabel alloc] init];
    label.text = placeholder;
    label.textColor = [UIColor grayColor];
    label.font = self.font;
    label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByWordWrapping;
    [label sizeToFit];
    label.frame = CGRectMake(5, 6, label.frame.size.width, label.frame.size.height);
    
    [self addSubview:label];
    
    self.placeholderLabel = label;
    
    self.delegate = self;
    
}


- (void)textViewDidChange:(UITextView *)textView{
    self.placeholderLabel.hidden = YES;
    if (self.text.length == 0) {
        self.placeholderLabel.hidden = NO;
    }
}

@end
/**
 关联对象，用白话文解释就是 以key为索引把value通过policy的策略关联到object上

 @param object 关联的对象
 @param key 关联对象的key
 @param value 被关联的属性
 @param policy 关联策略
 */
//void objc_setAssociatedObject(id object, const void *key, id value, objc_AssociationPolicy policy)



