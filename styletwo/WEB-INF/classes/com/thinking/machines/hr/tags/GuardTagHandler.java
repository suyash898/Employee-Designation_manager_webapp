package com.thinking.machines.hr.tags;
import javax.servlet.jsp.tagext.*;
import java.util.*;
import javax.servlet.jsp.*;
import java.io.*;
public class GuardTagHandler extends TagSupport
{
public GuardTagHandler()
{
reset();
}
public void reset()
{
// do nothing
}
public int doStartTag()
{
String username=(String)pageContext.getAttribute("username",PageContext.SESSION_SCOPE);
if(username==null)
{
return super.EVAL_BODY_INCLUDE;
}
return super.SKIP_BODY;
}
public int doEndTag()
{
this.reset();
return super.EVAL_PAGE;
}
}