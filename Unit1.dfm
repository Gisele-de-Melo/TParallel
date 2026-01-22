object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Parallelismo - La'#231'o For'
  ClientHeight = 266
  ClientWidth = 209
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object MemoLog: TMemo
    Left = 8
    Top = 8
    Width = 185
    Height = 194
    Lines.Strings = (
      'MemoLog')
    TabOrder = 0
  end
  object BtnProcessar: TButton
    Left = 8
    Top = 208
    Width = 185
    Height = 49
    Caption = 'Processar'
    TabOrder = 1
    OnClick = BtnProcessarClick
  end
end
