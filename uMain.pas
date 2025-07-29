unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    btnDano: TButton;
    btnVida: TButton;
    btnDefesa: TButton;
    edtScript: TEdit;
    procedure btnDanoClick(Sender: TObject);
    procedure btnVidaClick(Sender: TObject);
    procedure btnDefesaClick(Sender: TObject);
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

procedure TForm2.btnDanoClick(Sender: TObject);
var personagem:TPersonagem;
begin
    personagem.setDano(10);
end;

procedure TForm2.btnDefesaClick(Sender: TObject);
var personagem:TPersonagem;
begin
    personagem.setDefesa(10);
end;

procedure TForm2.btnVidaClick(Sender: TObject);
var personagem:TPersonagem;
begin
    personagem := TPersonagem.Create(10, 10, 20);
    personagem.setVida(20);
end;

end.
