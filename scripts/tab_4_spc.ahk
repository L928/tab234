; script to change [tab]-key behaviour to insert four spaces

TraySetIcon "../resources/tab_4.jpg"

Tab::
{
   Send '    '
}

^F5::{
  ExitApp(0)
}
	