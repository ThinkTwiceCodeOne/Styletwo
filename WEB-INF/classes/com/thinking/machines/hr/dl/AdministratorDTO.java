package com.thinking.machines.hr.dl;
import java.util.*;
public class AdministratorDTO implements java.io.Serializable,Comparable<AdministratorDTO>
{
private String username;
private String password;
public AdministratorDTO()
{
username="";
password="";
}
public void setUsername(java.lang.String username)
{
this.username=username;
}
public java.lang.String getUsername()
{
return this.username;
}
public void setPassword(java.lang.String password)
{
this.password=password;
}
public java.lang.String getPassword()
{
return this.password;
}
public int hashCode()
{
return username.hashCode();
}
public boolean equals(Object object)
{
if(!(object instanceof AdministratorDTO)) return false;
AdministratorDTO administratorDTO=(AdministratorDTO)object;
return this.username.equals(administratorDTO.username);
}
public int compareTo(AdministratorDTO administratorDTO)
{
return this.username.compareTo(administratorDTO.username);
}
}
