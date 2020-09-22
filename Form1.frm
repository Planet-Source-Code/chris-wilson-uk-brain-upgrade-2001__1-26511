VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Welcome"
   ClientHeight    =   2355
   ClientLeft      =   45
   ClientTop       =   300
   ClientWidth     =   5640
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2355
   ScaleWidth      =   5640
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "&Start"
      Default         =   -1  'True
      Height          =   375
      Left            =   2040
      TabIndex        =   1
      Top             =   1680
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "Welcome to brain upgrade, this program will upgrade your brain, to begin your free brain upgrade, click start."
      Height          =   735
      Left            =   1320
      TabIndex        =   2
      Top             =   600
      Width           =   4215
   End
   Begin VB.Line Line1 
      X1              =   1320
      X2              =   5520
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Label Label1 
      Caption         =   "Brain Upgrade 2001"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1320
      TabIndex        =   0
      Top             =   240
      Width           =   1935
   End
   Begin VB.Image Image1 
      Height          =   1125
      Left            =   120
      Picture         =   "Form1.frx":030A
      Top             =   240
      Width           =   1065
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form2.Show
Unload Form1
End Sub

Private Sub Command1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Shift = 1 Then Form3.DoCheat
End Sub
