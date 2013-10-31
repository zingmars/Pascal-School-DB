object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Mekl'#275't'#257'js'
  ClientHeight = 31
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 552
    Top = 6
    Width = 116
    Height = 25
    Caption = 'Mekl'#275't'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 361
    Height = 21
    TabOrder = 1
    TextHint = 'Ievadi kabineta numuru, priek'#353'metu, ..., un izv'#275'lies, k'#257' mekl'#275't.'
  end
  object ComboBox1: TComboBox
    Left = 375
    Top = 8
    Width = 171
    Height = 21
    Style = csDropDownList
    TabOrder = 2
    TextHint = '-- Mekl'#275#353'anas veids --'
    Items.Strings = (
      'Kabineta nr.'
      'Skolot'#257'ja v'#257'rds'
      'Priek'#353'mets')
  end
end
