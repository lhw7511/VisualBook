//
//  ViewController.h
//  VisualBook
//
//  Created by beintech on 2022/04/19.
//

#import <UIKit/UIKit.h>

@class BookManager;
@interface ViewController : UIViewController{
    BookManager *myBook;
}
-(IBAction)showAllBookAction:(id)sender;

@end

