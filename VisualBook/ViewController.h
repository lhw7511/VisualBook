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

@property(nonatomic,strong) IBOutlet UITextView *resultTextView;
@property(nonatomic,strong) IBOutlet UITextField *nameTextField;
@property(nonatomic,strong) IBOutlet UITextField *genreTextField;
@property(nonatomic,strong) IBOutlet UITextField *authorTextField;

-(IBAction)showAllBookAction:(id)sender;
-(IBAction)addBookAction:(id)sender;
-(IBAction)textFieldReturn:(id)sender;
-(IBAction)findBookAction:(id)sender;
@end

