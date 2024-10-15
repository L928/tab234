; script to switch the [tab]-key behaviour to insert tab or 2/3/4/ spaces

TraySetIcon "../resources/tab_234.jpg"

^F6::{
  Send "^{F5}"
  Run("tab_2_spc.ahk")      
}
   
^F7::{
  Send "^{F5}"
  Run("tab_3_spc.ahk")      
}

^F8::{
  Send "^{F5}"
  Run("tab_4_spc.ahk")      
}
