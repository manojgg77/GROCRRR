<% String s=(String)session.getAttribute("message"); 
if(s!=null)
{ out.print(s); 
session.removeAttribute("message"); }%>