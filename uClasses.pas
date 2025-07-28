unit uClasses;

interface


  // Abstração
  // Encapsulamento
  type TPersonagem = class
    Nome: String;
    Vida: Integer;
    Genero: String;
    Level: Integer;
    Dano: Integer;
    Defesa: Integer;

    constructor Create(aDano, aDefesa: Integer);

  end;

  //Herança
  type TPlayer = class (TPersonagem)
    NickName: String;
    Experience: Double;
  end;

  type TBoss = class (TPersonagem)

  end;

implementation

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: Integer);
begin
    Self.Dano:= aDano;
    Self.Defesa:= aDefesa;
end;

end.
