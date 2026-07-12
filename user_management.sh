create_user()
{
 read -p "Enter username: " username
 sudo adduser $username
 
 echo "User $username created successfully

 echo "User $username created" >> activity.log"
}

delete_user()
{
 read -p "Enter username: " deluser
 sudo deluser $deluser

 echo "User $deluser deleted successfully"
}

view_User()
{
 echo "List of Users: "
 cut -d: -f1 /etc/passwd
}

create_group()
{
 read -p "Enter groupname: " groupname
 sudo addgroup $groupname

 echo "User $groupname created successfully"
}

add_user_into_group()
{
 read -p "Enter username: " username
 read -p "Enter groupname: " groupname
  
 sudo usermode -aG $groupname $username

 echo "User $username added to group $groupname"
}

check_user_details()
{
 echo "User details.."
 read -p "Enter username: " username

 id $username
}

change_file_permission()
{
 read -p "Enter file name: " filename
 read -p "Enter permission (example 755): " permission

sudo chmod $permission $filename

echo "Permission changed successfully"
}

check_file_permission()
{
  echo "file permissions..."
  read -p "Enter filename: " filename
  
  ls -l $filename
}

view_logs()
{
  echo "Activity Logs: "
  cat activity.log
}

exit_program()
{
 echo "Exiting Linux User and Permission Management System"
 exit 0
}



echo "Linux User Management Project"

echo "1. Create User"
echo "2. Delete User"
echo "3. View User"
echo "4. Create Group"
echo "5. Add User into Group"
echo "6. Check User Details"
echo "7. Change File Permission"
echo "8. Check File Permission"
echo "9. View Logs"
echo "10. Exit"

read -p "Enter your choice: " choice

case  $choice in

1) 
 create_user
 ;;

2)
 delete_user
 ;;

3)
 view_User
 ;;

4) 
 create_group
 ;;

5)
 add_user_into_group
 ;;

6)
 check_user_details
 ;;

7)
 change_file_permission
 ;;

8)
 check_file_permission
 ;;

9)
 view_logs
 ;;

10)
 exit_program
 ;;

*)
 echo "Invalid choice"
 ;;

esac

