let
  userName = "lorobert";
  email = "lorobert@student.42lausanne.ch";
in
{
    programs.git = {
        enable = true;
        userName = userName;
        userEmail = email;
    };
}
