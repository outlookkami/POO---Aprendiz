unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses uClasses;

procedure TForm2.Button1Click(Sender: TObject);
var personagem:TPersonagem;
    player:TPlayer;

begin
    personagem:=TPersonagem.Create(10, 10);
    personagem.Nome:='Teste';

end;

end.
