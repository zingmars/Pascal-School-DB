object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 
    'Mekl'#275#353'anas Rezult'#257'ti [LICENCE VERIFICATION FAILED. ANTI-PIRACY T' +
    'ASK FORCE HAS BEEN INFORMED]'
  ClientHeight = 312
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 537
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Aizv'#275'rt'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListView1: TListView
    AlignWithMargins = True
    Left = 16
    Top = 16
    Width = 585
    Height = 257
    Columns = <>
    DragKind = dkDock
    GridLines = True
    TabOrder = 1
    TabStop = False
    ViewStyle = vsReport
  end
  object Button2: TButton
    Left = 456
    Top = 279
    Width = 75
    Height = 25
    Caption = 'Mekl'#275't v'#275'l'
    TabOrder = 2
    OnClick = Button2Click
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'ASA'
    GetDriverFunc = 'getSQLDriverASA'
    LibraryName = 'sqlite3.dll'
    Params.Strings = (
      'DriverUnit=Data.DBXSybaseASA'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXSybaseASAMetaDataCommandFactory,DbxSyb' +
        'aseASADriver160.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXSybaseASAMetaDataCommand' +
        'Factory,Borland.Data.DbxSybaseASADriver,Version=16.0.0.0,Culture' +
        '=neutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverASA'
      'LibraryName=dbxasa.dll'
      'LibraryNameOsx=libsqlasa.dylib'
      'VendorLib=dbodbc*.dll'
      'VendorLibWin64=dbodbc*.dll'
      'VendorLibOsx=libdbodbc12.dylib'
      'HostName=ServerName'
      'Database=DBNAME'
      'User_Name=user'
      'Password=password'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'Port='
      'ConnectionString='
      'BlobSize=-1'
      'ErrorResourceFile=')
    VendorLib = 'dbodbc*.dll'
    Top = 272
  end
end
