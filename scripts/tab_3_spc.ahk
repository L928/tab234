; script to change [tab]-key behaviour to insert three spaces

TraySetIcon "../resources/tab_3.jpg"

Tab::
{
   Send '   '
}

^F5::{
  ExitApp(0)
}
