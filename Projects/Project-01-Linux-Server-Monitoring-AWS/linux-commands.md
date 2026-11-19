# Linux Terminal Commands – Server Monitoring Project

This document contains the Linux commands used to configure, monitor, and verify the AWS EC2 Ubuntu server.

## Screenshot 01 – Linux Server Information

**Purpose:** Check operating system, CPU cores, RAM, and disk information.

### Commands

```bash
hostnamectl
nproc
free -h
df -h
```

**What these commands do:**
- `hostnamectl` – Displays operating system and hostname information.
- `nproc` – Displays the number of available CPU processing units.
- `free -h` – Displays RAM and memory usage.
- `df -h` – Displays disk space and filesystem usage.

**Screenshot:** `01-linux-server-info.png`

---

## Screenshot 02 – Bash Server Monitoring Script

**Purpose:** Execute the server monitoring script and check CPU, RAM, and disk utilization.

### Command

```bash
bash /home/ubuntu/linux-monitoring/server_monitor.sh
```

**What it does:**
- Checks CPU utilization.
- Checks RAM utilization.
- Checks disk utilization.
- Compares usage against configured thresholds.
- Records server health information in the log file.

**Screenshot:** `02-bash-monitoring.png`

---

## Screenshot 03 – Monitoring Logs

**Purpose:** View the latest server monitoring records.

### Command

```bash
tail -n 10 /home/ubuntu/linux-monitoring/logs/server_health.log
```

**What it does:**
- Displays the latest 10 log entries.
- Shows recorded CPU, RAM, and disk utilization.
- Helps verify automatic monitoring activity.

**Screenshot:** `03-monitoring-logs.png`

---

## Screenshot 04 – Cron Job Verification

**Purpose:** Verify automatic execution of the monitoring script every five minutes.

### Commands

```bash
crontab -l
sudo systemctl is-active cron
```

**Expected Cron Configuration:**

```bash
*/5 * * * * /home/ubuntu/linux-monitoring/server_monitor.sh
```

**What these commands do:**
- `crontab -l` – Displays configured scheduled jobs.
- `systemctl is-active cron` – Checks whether the Cron service is active.

**Expected service output:**

```text
active
```

**Screenshot:** `04-cron-job.png`

---

## Screenshot 05 – CloudWatch Agent Status

**Purpose:** Verify that the Amazon CloudWatch Agent is running and configured.

### Command

```bash
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a status
```

**Expected status:**

```json
{
  "status": "running",
  "configstatus": "configured"
}
```

**What it verifies:**
- CloudWatch Agent is running.
- Agent configuration has been applied.
- The EC2 instance is configured to publish custom metrics.

**Screenshot:** `05-cloudwatch-agent.png`

---

## Project Verification Summary

| No. | Verification | Expected Result |
|---|---|---|
| 01 | Linux server information | OS, CPU, RAM and Disk details |
| 02 | Bash monitoring script | Monitoring output |
| 03 | Monitoring logs | Latest log records |
| 04 | Cron job | Scheduled job and active service |
| 05 | CloudWatch Agent | Running and configured |

**Project:** Linux Server Monitoring & Automated Alerting using AWS

**Environment:** Ubuntu 24.04 on AWS EC2

**Author:** Som Pandey
