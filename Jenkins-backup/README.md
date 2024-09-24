systemctl stop jenkins
tar -zcvf jenkins-backup.tar.gz /var/lib/jenkins
install AWS CLI
aws s3 ls
aws s3 cp jenkins-backup.tar.gz s3://farooq/jenkins-backup.tar.gz

===== launch new system ====== launch new server install jenkins install aws cli
aws s3 ls
aws s3 cp s3://farooq/jenkins-backup.tar.gz jenkins-backup.tar.gz

=== restore 
systemctl stop jenkins 
rm -rf /var/lib/jenkins 
tar -zxvf jenkins-backup.tar.gz -C /
systemctl start jenkins

aws s3 sync s3://saileshs3/jenkins /var/lib/jenkins
aws s3 sync /var/lib/jenkins s3://saileshs3/jenkins/ --dryrun