echo "Please Type in the web site you wish to refresh(login page url): "
read site_address
echo "Your email or acount name:"
read email
echo "Your password:"
read password
login_id="login"
echo "---The following inputs required you to check out the source html---"
echo "Login botton id(default 'login')"
read login_id_temp
if [ -n "$login_id_temp" ]; then
	login_id=$login_id_temp
fi
echo "Element NAME of email or account name(default 'email'):"
read email_field
[ -n "$email_field" ] || email_field='email'

echo "Element NAME of password name(default 'password'):"
read password_field
[ -n "$password_field" ] || password_field='password'

echo "------Ready to launch!!!------"
sed -e "s/---website login page url---/$site_address/" -e "s/---your email---/$email/" -e "s/---your password---/$password/" -e "s/---login botton id---/$login_id/" -e "s/---password field name---/$password_field/" -e "s/---email field name---/$email_field/" fresher.rb > configed_fresher.rb
#cat temp.rb
#sed "s/---your email---/$email/" temp.rb > temp.rb
#cat temp.rb
#sed "s/---your password---/$password/" temp.rb > temp.rb
#cat temp.rb
#sed "s/---login botton id---/$login_id/" temp.rb > temp1.rb
ruby configed_fresher.rb