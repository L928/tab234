; script to change [tab]-key behaviour to insert two spaces

TraySetIcon "../resources/tab_2.jpg"

Tab::
{
   Send '  '
}

^F5::{
  ExitApp(0)
}
