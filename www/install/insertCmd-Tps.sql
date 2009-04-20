--
-- Commands and Timeperiods
--

INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(1, 'check_host_alive', '$USER1$#S#check_ping -H $HOSTADDRESS$ -w 3000.0,80% -c 5000.0,100% -p 1', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(2, 'check_disk_smb', '$USER1$#S#check_disk_smb -H $HOSTADDRESS$ -s $ARG1$ -u $ARG2$ -p $ARG3$ -w $ARG4$ -c $ARG5$', '!share!user!passwd!80!90', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(3, 'check_distant_disk_space', '$USER1$#S#check_distant_disk_space -H $HOSTADDRESS$ -C $ARG1$ -p $ARG2$ -w $ARG3$ -c $ARG4$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(4, 'check_centreon_dummy', '$USER1$#S#check_centreon_dummy -s $ARG1$ -o $ARG2$', '!0!OK', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(5, 'check_centreon_load_average', '$USER1$#S#check_centreon_snmp_loadaverage -H $HOSTADDRESS$ -v $ARG1$ -C $ARG2$ -w $ARG3$ -c $ARG4$', '!1!public!4,3,2!6,5,4', 2, 8, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(6, 'check_centreon_ping', '$USER1$#S#check_centreon_ping -H $HOSTADDRESS$ -n $ARG1$ -w $ARG2$ -c $ARG3$', '!3!200,20%!400,50%', 2, 2, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(7, 'check_centreon_process', '$USER1$#S#check_centreon_snmp_process -H $HOSTADDRESS$ -v $ARG1$ -C $ARG2$ -n -p $ARG3$', '!2c!$USER2$!httpd', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(8, 'check_centreon_remote_storage', '$USER1$#S#check_centreon_snmp_remote_storage -H $HOSTADDRESS$ -n -d $ARG1$ -w $ARG2$ -c $ARG3$ -C $ARG4$ -v $ARG5$', '!#S#!80!90!$USER2$!1', 2, 3, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(10, 'check_centreon_traffic_limited', '$USER1$#S#check_centreon_snmp_traffic -H $HOSTADDRESS$ -n -i $ARG1$ -w $ARG2$ -c $ARG3$ -C $ARG4$ -v $ARG5$ -T $ARG6$', '!eth0!80!90!$USER2$!1!2', 2, 7, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(11, 'check_hpjd', '$USER1$#S#check_hpjd -H $HOSTADDRESS$ -C public', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(12, 'check_http', '$USER1$#S#check_http -H $HOSTADDRESS$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(13, 'check_https', '$USER1$#S#check_http -S $HOSTADDRESS$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(14, 'check_local_swap', '$USER1$#S#check_swap -w $ARG1$ -c $ARG2$ -v', '!80!90', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(15, 'check_local_disk', '$USER1$#S#check_disk -w $ARG2$ -c $ARG3$ -p $ARG1$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(16, 'check_local_load', '$USER1$#S#check_load -w $ARG1$ -c $ARG2$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(17, 'check_local_procs', '$USER1$#S#check_procs -w $ARG1$ -c $ARG2$ -u $ARG3$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(18, 'check_local_users', '$USER1$#S#check_users -w $ARG1$ -c $ARG2$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(19, 'check_nt_memuse', '$USER1$#S#check_nt -H $HOSTADDRESS$ -v MEMUSE -s &quot;public&quot;', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(20, 'check_nt_cpu', '$USER1$#S#check_nt -H $HOSTADDRESS$ -v CPULOAD -s &quot;public&quot; -l 2,90,95', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(21, 'check_nt_disk', '$USER1$#S#check_nt -H $HOSTADDRESS$ -v USEDDISKSPACE -s &quot;public&quot; -l $ARG1$ -w $ARG2$ -c $ARG3$', '!C!80!90', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(23, 'check_tcp', '$USER1$#S#check_tcp -H $HOSTADDRESS$ -p $ARG1$ -w $ARG2$ -c $ARG3$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(24, 'check_nntp', '$USER1$#S#check_nntp -H $HOSTADDRESS$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(25, 'check_pop', '$USER1$#S#check_pop -H $HOSTADDRESS$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(26, 'check_smtp', '$USER1$#S#check_smtp -H $HOSTADDRESS$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(27, 'check_dns', '$USER1$#S#check_dns -H $ARG1$ -s $HOSTADDRESS$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(28, 'check_ftp', '$USER1$#S#check_ftp -H $HOSTADDRESS$', '!127.0.0.1', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(29, 'check_dhcp', '$USER1$#S#check_dhcp -s $HOSTADDRESS$ -i $ARG1$', '!eth0', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(30, 'check_dig', '$USER1$#S#check_dig -H $HOSTADDRESS$ -l $ARG1$', '!www.centreon-nms.org', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(31, 'check_snmp', '$USER1$#S#check_snmp -H $HOSTADDRESS$ -o $ARG1$ -w $ARG2$ -C $ARG3$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(32, 'check_telnet', '$USER1$#S#check_tcp -H $HOSTADDRESS$ -p 23', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(33, 'check_udp', '$USER1$#S#check_udp -H $HOSTADDRESS$ -p $ARG1$', '', 2, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(34, 'check_centreon_nt', '$USER1$#S#check_centreon_nt -H $HOSTADDRESS$ -p 12489 -v $ARG1$ -l $ARG2$ -s $ARG3$ -w $ARG4$ -c $ARG5$', '', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(35, 'host-notify-by-email', '#S#usr#S#bin#S#printf &quot;%b&quot; &quot;***** centreon Notification *****#BR##BR#Type:$NOTIFICATIONTYPE$#BR#Host: $HOSTNAME$#BR#State: $HOSTSTATE$#BR#Address: $HOSTADDRESS$#BR#Info: $HOSTOUTPUT$#BR#Date#S#Time: $DATE$&quot; | @MAILER@ -s &quot;Host $HOSTSTATE$ alert for $HOSTNAME$!&quot; $CONTACTEMAIL$', '', 1, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(36, 'notify-by-email', '#S#usr#S#bin#S#printf &quot;%b&quot; &quot;***** centreon Notification *****#BR##BR#Notification Type: $NOTIFICATIONTYPE$#BR##BR#Service: $SERVICEDESC$#BR#Host: $HOSTALIAS$#BR#Address: $HOSTADDRESS$#BR#State: $SERVICESTATE$#BR##BR#Date#S#Time: $DATE$ Additional Info : $SERVICEOUTPUT$&quot; | @MAILER@ -s &quot;** $NOTIFICATIONTYPE$ alert - $HOSTALIAS$#S#$SERVICEDESC$ is $SERVICESTATE$ **&quot; $CONTACTEMAIL$', '', 1, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(37, 'host-notify-by-epager', '#S#usr#S#bin#S#printf &quot;%b&quot; &quot;Host $HOSTALIAS$ is $HOSTSTATE$#BR#Info: $OUTPUT$#BR#Time: $DATETIME$#BS#&quot; | @MAILER@ -s #BS#&quot;$NOTIFICATIONTYPE$ alert - Host $HOSTNAME$ is $HOSTSTATE$#BS#&quot; $CONTACTPAGER$', '', 1, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(38, 'notify-by-epager', '#S#usr#S#bin#S#printf &quot;%b&quot; &quot;Service: $SERVICEDESC$#BR#Host: $HOSTNAME$#BR#Address: $HOSTADDRESS$#BR#State: $SERVICESTATE$#BR#Info: $OUTPUT$#BR#Date: $DATETIME$&quot; | @MAILER@ -s &quot;$NOTIFICATIONTYPE$: $HOSTALIAS$#S#$SERVICEDESC$ is $SERVICESTATE$&quot; $CONTACTPAGER$', '', 1, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(39, 'submit-host-check-result', '$USER1$#S#submit_host_check_result $HOSTNAME$ $HOSTSTATE$ &#039;$HOSTOUTPUT$&#039;', '', 3, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(40, 'submit-service-check-result', '$USER1$#S#submit_service_check_result $HOSTNAME$ $SERVICEDESC$ $SERVICESTATE$ &#039;$SERVICEOUTPUT$&#039;', '', 3, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(41, 'process-service-perfdata', '$USER1$#S#process-service-perfdata  &quot;$LASTSERVICECHECK$&quot; &quot;$HOSTNAME$&quot; &quot;$SERVICEDESC$&quot; &quot;$LASTSERVICESTATE$&quot; &quot;$SERVICESTATE$&quot; &quot;$SERVICEPERFDATA$&quot;', '', 3, NULL, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(44, 'check_centreon_uptime', '$USER1$#S#check_centreon_snmp_uptime -H $HOSTADDRESS$ -C $USER2$ -v 2 -d', '', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(59, 'check_centreon_nb_connections', '$USER1$#S#check_centreon_TcpConn -H $HOSTADDRESS$ -C $USER2$ -v 1 -p $ARG1$ -w $ARG2$ -c $ARG3$', '!80!70!100', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(62, 'check_centreon_traffic', '$USER1$#S#check_centreon_snmp_traffic -H $HOSTADDRESS$ -n -i $ARG1$ -w $ARG2$ -c $ARG3$ -C $USER2$ -v $ARG4$', '!eth0!80!90!1', 2, 7, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(76, 'check_load_average', '$USER1$#S#check_load $HOSTADDRESS$ -w $ARG1$ -c $ARG2$', '', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(77, 'check_local_cpu_load', '$USER1$#S#check_nt -H $HOSTADDRESS$ -v CPULOAD -l $ARG1$ -s &quot;public&quot;', '', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(78, 'check_local_disk_space', '$USER1$#S#check_nt -H $HOSTADDRESS$ -v USEDDISKSPACE -l $ARG1$ -w $ARG2$ -c $ARG3$ -s &quot;public&quot;', '', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(79, 'check_maxq', '$USER1$#S#check_maxq_script_return -r $ARG1$ -P $ARG2$', '', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(89, 'host-notify-by-jabber', '$USER1$#S#notify_via_jabber  $CONTACTPAGER$ &quot;Host &#039;$HOSTALIAS$&#039; is $HOSTSTATE$ - Info: $HOSTOUTPUT$&quot;', '', 1, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(90, 'notify-by-jabber', '$USER1$#S#notify_via_jabber $CONTACTPAGER$ &quot;$NOTIFICATIONTYPE$ $HOSTNAME$ $SERVICEDESC$ $SERVICESTATE$ $SERVICEOUTPUT$ $LONGDATETIME$&quot;', '', 1, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(94, 'check_centreon_snmp_value', '$USER1$#S#check_centreon_snmp_value -H $HOSTADDRESS$ -C $ARG1$ -v $ARG2$ -o $ARG3$ -w $ARG4$  -c $ARG5$', '!public!1!1.3.6.1.4.1.705.1.8.1.0!190!210', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(95, 'check_centreon_snmp_proc_detailed', '$USER1$#S#check_centreon_snmp_process_detailed -H $HOSTADDRESS$ -C $USER2$ -n $ARG1$ -m $ARG2$', '!apache!20,50', 2, 0, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(96, 'check_centreon_cpu', '$USER1$#S#check_centreon_snmp_cpu -H $HOSTADDRESS$ -v 1 -C $ARG1$ -c $ARG2$ -w $ARG3$', '!$USER2$!80!90', 2, 5, NULL);
INSERT INTO `command` (`command_id`, `command_name`, `command_line`, `command_example`, `command_type`, `graph_id`, `cmd_cat_id`) VALUES(97, 'check_centreon_memory', '$USER1$#S#check_centreon_snmp_memory -H $HOSTADDRESS$ -C $USER2$ -v 1 -w 80 -c 90', '', 2, 4, NULL);

--
-- table `timeperiod`
--

INSERT INTO `timeperiod` VALUES (NULL, '24x7', '24_Hours_A_Day,_7_Days_A_Week', '00:00-24:00', '00:00-24:00', '00:00-24:00', '00:00-24:00', '00:00-24:00', '00:00-24:00', '00:00-24:00');
INSERT INTO `timeperiod` VALUES (NULL, 'none', 'No Time Is A Good Time', '', '', '', '', '', '', '');
INSERT INTO `timeperiod` VALUES (NULL, 'nonworkhours', 'Non-Work Hours', '00:00-24:00', '00:00-09:00,17:00-24:00', '00:00-09:00,17:00-24:00', '00:00-09:00,17:00-24:00', '00:00-09:00,17:00-24:00', '00:00-09:00,17:00-24:00', '00:00-24:00');
INSERT INTO `timeperiod` VALUES (NULL, 'workhours', 'Work hours', '', '09:00-17:00', '09:00-17:00', '09:00-17:00', '09:00-17:00', '09:00-17:00', '');


