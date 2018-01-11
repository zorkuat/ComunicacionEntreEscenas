//
//  LaAbuelaController.m
//  ComunicacionEntreEscenas
//
//  Created by cice on 11/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import "LaAbuelaController.h"
#import "MrPepitController.h"

@interface LaAbuelaController ()
@property (weak, nonatomic) IBOutlet UITextView *vistaTexto;

@end

@implementation LaAbuelaController

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"saludo"])
    {
        MrPepitController * escenaDestino = segue.destinationViewController;
        [escenaDestino recibirSaludo:@"- Hello, little boy..."];
        escenaDestino.delegado = self;
        self.vistaTexto.text = @"- Hello, little boy...";
    }
    
}


#pragma mark - Don Pepito Delegate

-(void)recibirSaludo:(NSMutableString *)conversacion
{
    [conversacion appendString:@"- ¡Yo no soy Don José, soy su abuela!"];
    [conversacion appendString:@"\n"];
    
    self.vistaTexto.text = conversacion;
    
    [self dismissViewControllerAnimated:true completion:nil];
}

-(void)recibirInsulto:(NSMutableString *)conversacion
{
    [conversacion appendString:@"- No... FUCK YOUUUU, SON"];
    [conversacion appendString:@"\n"];
    
    self.vistaTexto.text = conversacion;
    
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
