VERSION 5.00
Begin VB.Form Form3 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   ClientHeight    =   660
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   3135
   ControlBox      =   0   'False
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   660
   ScaleWidth      =   3135
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   2520
      Top             =   120
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "BRAIN SCANNER 2.55c"
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   2295
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00FFC0C0&
      X1              =   0
      X2              =   1920
      Y1              =   360
      Y2              =   360
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Screen1 As String
Dim Screen2 As String
Dim GoodBrain As Integer


Private Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Private Declare Function GetShortPathName Lib "kernel32" Alias "GetShortPathNameA" (ByVal lpszLongPath As String, ByVal lpszShortPath As String, ByVal cchBuffer As Long) As Long
Private Declare Function ShowCursor& Lib "user32" (ByVal bShow As Long)
Private Const SND_SYNC = &H1
Private Const SND_ASYNC = &H2
Private Const SND_LOOP = &H19
Private Const SND_STOP = &H5



Private Function Short_Name(Long_Path As String) As String

    Dim Short_Path As String
    Dim PathLength As Long
    Short_Path = Space(250)
    PathLength = GetShortPathName(Long_Path, Short_Path, Len(Short_Path))


    If PathLength Then
        Short_Name = Left$(Short_Path, PathLength)
        
    End If
End Function




Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 40 Then
GoodBrain = 1
End If

If KeyCode = 38 Then
If GoodBrain = 1 Then GoodBrain = 2
End If



If KeyCode = 13 Then
ScreenRes Screen1, Screen2
ShowCursor (True)
Form3.Hide
sndPlaySound Short_Name(App.Path & "\Scanner.wav"), SND_STOP
ChDir App.Path
'Kill "brain.dat"
MsgBox "Scan aborted", vbCritical, "Brain Upgrade"
Unload Form3
End
End If

End Sub

Private Sub Form_Load()
Dim intWidth As Integer
Dim intHeight As Integer

intWidth = Screen.Width \ Screen.TwipsPerPixelX
intHeight = Screen.Height \ Screen.TwipsPerPixelY
Screen1 = Str$(intWidth): Screen2 = Str$(intHeight)

ScreenRes 640, 480
ShowCursor (False)
Form3.Show


Line1.X2 = Form3.Width


Line1.Y1 = Form3.Height
Line1.Y2 = Form3.Height


'BRAIN.DAT IS A WAVEFILE!
sndPlaySound Short_Name(App.Path & "\brain.dat"), SND_LOOP

End Sub

Public Sub DoCheat()
GoodBrain = 2
End Sub

Private Sub Timer1_Timer()
Line1.Y1 = Line1.Y1 - 20
Line1.Y2 = Line1.Y2 - 20



Label1 = "BRAIN SCANNER 2.55c" & vbCrLf & Line1.Y1


If Line1.Y1 = 0 Then
ScreenRes Screen1, Screen2
ShowCursor (True)
Form3.Hide
sndPlaySound Short_Name(App.Path & "\brain.dat"), SND_STOP
ChDir App.Path
'Kill "brain.dat"
If Not GoodBrain = 2 Then MsgBox "No brain found", vbCritical, "Error"
If GoodBrain = 2 Then MsgBox "Brain already too advanced to upgrade", vbCritical, "Error"
Unload Form3
End
End If


End Sub
