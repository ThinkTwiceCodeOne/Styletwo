package com.thinking.machines.hr.dl;
import java.sql.*;
import java.util.*;
public class AdministratorDAO
{
public AdministratorDTO getByUsername(java.lang.String username) throws DAOException
{
AdministratorDTO administratorDTO=new AdministratorDTO();
try
{
Connection connection=DAOConnection.getConnection();
PreparedStatement preparedStatement;
preparedStatement=connection.prepareStatement("select * from administrator where uname=?");
preparedStatement.setString(1,username);
ResultSet resultSet=preparedStatement.executeQuery();
if(resultSet.next()==false)
{
resultSet.close();
preparedStatement.close();
connection.close();
throw new DAOException("Invalid username: "+username);
}
String uname;
String password;
uname=resultSet.getString("uname");
password=resultSet.getString("pwd").trim();
administratorDTO.setUsername(uname);
administratorDTO.setPassword(password);
resultSet.close();
preparedStatement.close();
connection.close();
}catch(Exception exception)
{
throw new DAOException(exception.getMessage());
}
return administratorDTO;
}
}