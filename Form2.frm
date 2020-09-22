VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Please wait..."
   ClientHeight    =   1425
   ClientLeft      =   45
   ClientTop       =   300
   ClientWidth     =   5280
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1425
   ScaleWidth      =   5280
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   255
      Left            =   1320
      TabIndex        =   1
      Top             =   840
      Width           =   3735
      _ExtentX        =   6588
      _ExtentY        =   450
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.Timer Timer1 
      Interval        =   25
      Left            =   480
      Top             =   480
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "P R E P A R I N G    B R A I N    S C A N"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Top             =   240
      Width           =   3615
   End
   Begin VB.Image Image1 
      Height          =   1125
      Left            =   120
      Picture         =   "Form2.frx":030A
      Top             =   120
      Width           =   1065
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim BinData As String
'Dim ProgressBar1 As Integer


Private Sub Form_Load()
'THIS DEMONSTRATES HOW TO EXTRACT A WAVEFILE FROM YOUR PROGRAM
'MY FIRST COPY IF THIS HAD A WAVEFILE HIDDEN INSIDE THE .EXE FILE
'BUT I HAD TO TAKE IT OUT TO UPLOAD TO PSC BECAUSE I CANT SEND
'.EXE FILES TO PSC


'Dim VarString As String
ChDir App.Path

'Open App.EXEName & ".exe" For Binary As #1
'VarString = String(FileLen(App.EXEName & ".exe") - 65536, " ")
'Get #1, FileLen(App.EXEName & ".exe") - 44217, VarString
'Close #1

'Open "brain.dat" For Binary As #1
'Put #1, , VarString
'Close #1

End Sub

Private Sub Timer1_Timer()
ProgressBar1 = ProgressBar1 + 1
Label1 = "P R E P A R I N G    B R A I N    S C A N" & vbCrLf & ProgressBar1 & "%"
If ProgressBar1 = 100 Then
Form3.Show
Unload Form2
End If

End Sub
