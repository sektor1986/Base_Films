object Form_glavn: TForm_glavn
  Left = 0
  Top = 0
  AlphaBlendValue = 200
  Caption = #1041#1072#1079#1072' '#1092#1080#1083#1100#1084#1086#1074
  ClientHeight = 489
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    738
    489)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    AlignWithMargins = True
    Left = 8
    Top = 39
    Width = 538
    Height = 442
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoFitColWidths = True
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    IndicatorTitle.ShowDropDownSign = True
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    RowDetailPanel.Color = clBtnFace
    SortLocal = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    TitleLines = 2
    VertScrollBar.VisibleMode = sbAlwaysShowEh
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1040#1047#1042#1040#1053#1048#1045
        Title.SortIndex = 1
        Title.SortMarker = smDownEh
        Title.TitleButton = True
        Width = 164
      end
      item
        EditButtons = <>
        FieldName = 'Director'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1056#1045#1046#1048#1057#1057#1025#1056
        Title.SortIndex = 2
        Title.SortMarker = smDownEh
        Title.TitleButton = True
        Width = 95
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'DateVihoda'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1040#1058#1040' '#1042#1067#1061#1054#1044#1040
        Title.TitleButton = True
        Width = 92
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'Type'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1046#1040#1053#1056
        Title.TitleButton = True
        Width = 90
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'IMDB'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 53
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sDBMemo1: TsDBMemo
    Left = 552
    Top = 320
    Width = 178
    Height = 161
    Anchors = [akTop, akRight, akBottom]
    DataField = 'Desc'
    DataSource = DataSource1
    ScrollBars = ssVertical
    TabOrder = 1
    OnDblClick = sDBMemo1DblClick
    BoundLabel.Active = True
    BoundLabel.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
    BoundLabel.Indent = 5
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -13
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = [fsBold]
    BoundLabel.Layout = sclTopCenter
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'EDIT'
  end
  object sDBNavigator1: TsDBNavigator
    Left = 8
    Top = 8
    Width = 538
    Anchors = [akLeft, akTop, akRight]
    FullRepaint = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    SkinData.SkinSection = 'TOOLBAR'
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
  end
  object DBImage1: TDBImage
    Left = 552
    Top = 16
    Width = 178
    Height = 243
    Anchors = [akTop, akRight]
    DataField = 'Image'
    DataSource = DataSource1
    PopupMenu = PopupMenu1
    Stretch = True
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 607
    Top = 265
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 480
    Top = 32
  end
  object sOpenPictureDialog1: TsOpenPictureDialog
    Left = 656
    Top = 48
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 264
    object N1: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OnClick = N2Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 448
    Top = 104
    object N3: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object N4: TMenuItem
        AutoCheck = True
        Caption = #1055#1088#1086#1079#1088#1072#1095#1085#1086#1089#1090#1100
        OnClick = N4Click
      end
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FileName = 'base.cds'
    Params = <>
    Left = 440
    Top = 32
    object ClientDataSet1Name: TStringField
      DisplayWidth = 100
      FieldName = 'Name'
      Size = 30
    end
    object ClientDataSet1Director: TStringField
      FieldName = 'Director'
    end
    object ClientDataSet1DateVihoda: TDateField
      FieldName = 'DateVihoda'
    end
    object ClientDataSet1Type: TStringField
      FieldName = 'Type'
    end
    object ClientDataSet1IMDB: TFloatField
      FieldName = 'IMDB'
    end
    object ClientDataSet1Desc: TMemoField
      FieldName = 'Desc'
      BlobType = ftMemo
      Size = 200
    end
    object ClientDataSet1Image: TGraphicField
      FieldName = 'Image'
      BlobType = ftGraphic
      Size = 200
    end
  end
end
