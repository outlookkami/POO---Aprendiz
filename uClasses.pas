unit uClasses;

interface


  // Abstração
  // Encapsulamento
  type TPersonagem = class
  private
    Nome: String;
    Vida: Integer;
    Genero: String;
    Level: Integer;
    Dano: Integer;
    Defesa: Integer;
    public
    //Getter & Setter
    function getDano: Integer;
    procedure setDano(ADano: Integer);

    function getVida: Integer;
    procedure setVida(AVida: Integer);

    function getDefesa: Integer;
    procedure setDefesa(ADefesa: Integer);

    function getGenero: String;
    procedure setGenero(AGenero: String);

    constructor Create(aDano, aDefesa, aVida: Integer);
  end;

  //Herança
  type TPlayer = class (TPersonagem)
    NickName: String;
    Experience: Double;
  end;

  type TBoss = class (TPersonagem)
  end;

implementation

  uses System.SysUtils;

constructor TPersonagem.Create(aDano, aDefesa, aVida: Integer);
begin
    Self.Dano := aDano;
    Self.Defesa := aDefesa;
    Self.Vida := aVida;
end;

function TPersonagem.getDano: Integer;
begin
  Result := Self.Dano+(Self.Level * 10);
end;

function TPersonagem.getDefesa: Integer;
begin
  Result := Self.Defesa+Self.Level;
end;

function TPersonagem.getGenero: String;
begin
  Result := Self.Genero;
end;

function TPersonagem.getVida: Integer;
begin
  Result := Self.Vida+(Self.Level * 12)+(Self.Defesa)-(Self.Dano);
end;

procedure TPersonagem.setDano(ADano: Integer);
begin
  if ADano < 1 then begin
   raise Exception.Create('O dano tem que ser maior que zero. TPersonagem.setDano');
  end;
  Self.Dano:= ADano;
end;

procedure TPersonagem.setDefesa(ADefesa: Integer);
begin
  if ADefesa < 1 then begin
    raise Exception.Create('A defesa deve ser maior que zero. TPersonagem.setDefesa');
  end;
  Self.Defesa := ADefesa;
end;

procedure TPersonagem.setGenero(AGenero: String);
begin
  Self.Genero := AGenero;
end;

procedure TPersonagem.setVida(AVida: Integer);
begin
  if AVida < 1 then begin
    raise Exception.Create('Seu personagem está morto. TPersonagem.setVida');
  end;
  Self.Vida := AVida;
end;
end.
