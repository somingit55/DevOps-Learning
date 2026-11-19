# Linux Server Monitoring & Automated Alerting using AWS

## Project Overview

This project implements an automated Linux server monitoring and alerting system using AWS services and Linux shell scripting.

It monitors server CPU, memory, and disk utilization, records health information, and sends email notifications when configured resource thresholds are exceeded.

## Technologies Used

- AWS EC2
- Ubuntu 24.04 Linux
- Bash Scripting
- Cron Jobs
- AWS CloudWatch
- CloudWatch Agent
- AWS SNS
- Git & GitHub

## Architecture

```text
Linux EC2 Instance (Ubuntu)
          |
          v
    Bash Monitoring Script
          |
          v
    CPU, RAM & Disk Checks
          |
          v
      Log Files
          |
          v
    Cron Job (Every 5 Minutes)


EC2 Instance
     |
     v
CloudWatch Agent
     |
     v
CloudWatch Custom Metrics
     |
     v
CloudWatch Alarms
     |
     v
SNS Notification
     |
     v
Email Alert
```

## Project Features

- Automated Linux server health monitoring.
- CPU, RAM, and disk utilization checks using Bash.
- Automatic monitoring every 5 minutes using Cron.
- Server health information stored in log files.
- CloudWatch Agent integration.
- Custom RAM and disk metrics in CloudWatch.
- CloudWatch alarms configured with an 80% threshold.
- SNS email notifications.
- Successfully tested RAM and disk alarm notifications.

## Project Structure

```text
Project-01-Linux-Server-Monitoring-AWS/
│
├── scripts/
│   └── server_monitor.sh
│
├── cloudwatch/
│   └── config.json
│
├── logs/
│   └── server_health.log
│
└── README.md
```

## AWS Configuration

- EC2: Ubuntu 24.04
- Instance Type: t3.small
- AWS Region: Asia Pacific (Hyderabad)
- CloudWatch Namespace: Linux/ServerMonitoring
- Metrics: mem_used_percent, disk_used_percent
- Alarm Threshold: 80%
- Notification Service: Amazon SNS

## Cron Configuration

The monitoring script runs automatically every 5 minutes.

```bash
*/5 * * * * /home/ubuntu/linux-monitoring/server_monitor.sh
```

## Monitoring Commands

Check memory usage:

```bash
free -h
```

Check disk usage:

```bash
df -h
```

Check CPU information:

```bash
top
```

View monitoring logs:

```bash
tail -n 5 logs/server_health.log
```

## Alert Testing

Both RAM and disk CloudWatch alarms were tested by temporarily changing their thresholds.

Results:

- RAM alarm successfully entered ALARM state.
- Disk alarm successfully entered ALARM state.
- SNS email notifications were successfully received.
- Both thresholds were restored to 80%.

## Learning Outcomes

Through this project, I gained practical experience with:

- Linux server administration.
- Bash automation.
- Cron job scheduling.
- AWS EC2 configuration.
- CloudWatch metrics and alarms.
- SNS email notification integration.
- Linux monitoring and troubleshooting.

## Author

Som Pandey

DevOps & Cloud Learning Portfolio
