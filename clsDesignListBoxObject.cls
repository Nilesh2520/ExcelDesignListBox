VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsDesignListBoxObject"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Option Explicit
Private WithEvents pLabl As MSForms.Label
Attribute pLabl.VB_VarHelpID = -1
Private pParent As clsDesignListBox
'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////
'Properties
'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////

'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////
'Events
'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////

Private Sub pLabl_Click()

Call pParent.RaiseEventBeforeClick

If pLabl.Tag = "Header" Then Exit Sub

Dim RowNumber As Long
RowNumber = Split(pLabl.Name, ";")(0)

Call pParent.SelectRow(RowNumber)
Call pParent.RaiseEventClick

End Sub
'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////
'Public Functions
'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////

Public Sub Create(InpLabel As MSForms.Label, InpParent As clsDesignListBox)

Set pLabl = InpLabel
Set pParent = InpParent

End Sub

'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////
'Private Functions
'//////////////////////////////////
'//////////////////////////////////
'//////////////////////////////////

