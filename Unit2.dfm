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
  OnCreate = FormCreate
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
  object StaticText1: TStaticText
    Left = 96
    Top = 16
    Width = 60
    Height = 17
    Caption = 'Pasniedz'#275'js'
    TabOrder = 1
  end
  object StaticText2: TStaticText
    Left = 520
    Top = 16
    Width = 45
    Height = 17
    Caption = 'Kabinets'
    TabOrder = 2
  end
  object StaticText3: TStaticText
    Left = 312
    Top = 16
    Width = 55
    Height = 17
    Caption = 'Priek'#353'mets'
    TabOrder = 3
  end
  object ListView1: TListView
    Left = 16
    Top = 39
    Width = 225
    Height = 234
    Columns = <>
    TabOrder = 4
  end
  object ListView2: TListView
    Left = 256
    Top = 39
    Width = 185
    Height = 234
    Columns = <>
    TabOrder = 5
  end
  object ListView3: TListView
    Left = 459
    Top = 39
    Width = 153
    Height = 235
    Columns = <>
    TabOrder = 6
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
