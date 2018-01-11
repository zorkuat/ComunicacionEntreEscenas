//
//  SaintJosephController.m
//  ComunicacionEntreEscenas
//
//  Created by cice on 11/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import "SaintJosephController.h"
#import "MrPepitController.h"

@interface SaintJosephController ()
@property (weak, nonatomic) IBOutlet UITextView *vistaTexto ;

@end

@implementation SaintJosephController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)botonSaludo:(id)sender {
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"saludo"])
    {
        MrPepitController * escenaDestino = segue.destinationViewController;
        [escenaDestino recibirSaludo:@"- Hello Mr Pepit"];
        escenaDestino.delegado = self;
        self.vistaTexto.text = @"- Hello Mr Pepit";
    }

}

#pragma mark - Mr Pepit Delegate

-(void)recibirSaludo:(NSMutableString *)conversacion
{
    [conversacion appendString:@"- ¿Paso usted por su casa?"];
    [conversacion appendString:@"\n"];
    
    self.vistaTexto.text = conversacion;
    
    [self dismissViewControllerAnimated:true completion:nil];
}

-(void)recibirInsulto:(NSMutableString *)conversacion
{
    [conversacion appendString:@"- YOOO, BITCH!"];
    [conversacion appendString:@"\n"];
    
    self.vistaTexto.text = conversacion;
    
    [self dismissViewControllerAnimated:true completion:nil];
}


@end
