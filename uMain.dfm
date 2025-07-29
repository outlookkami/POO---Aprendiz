object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 544
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnDano: TButton
    Left = 368
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Dano'
    TabOrder = 0
    OnClick = btnDanoClick
  end
  object btnVida: TButton
    Left = 287
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Vida'
    TabOrder = 1
    OnClick = btnVidaClick
  end
  object btnDefesa: TButton
    Left = 449
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Defesa'
    TabOrder = 2
    OnClick = btnDefesaClick
  end
  object edtScript: TEdit
    Left = 344
    Top = 280
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object btnBoss: TButton
    Left = 368
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Boss'
    TabOrder = 4
    OnClick = btnBossClick
  end
end
