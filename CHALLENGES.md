# Challenges & Fixes

---

1. Blob Storage — Auth Failed
Could not create containers. Missing storage key.
Fix: Added the correct storage account key.

---

2. Terraform State Locked
Previous run crashed and left the state file locked.
Fix: `terraform force-unlock <lock-id>`

---

3. SSH Key Missing
Terraform couldn't read `~/.ssh/id_rsa.pub` — file didn't exist.
Fix: `ssh-keygen -t rsa -b 4096`

---

4. Resource Group Already Exists
Created the resource group manually before Terraform, so Terraform complained.
Fix: `terraform import azurerm_resource_group.main <resource-id>`

---

5. CPU Quota Exceeded
Free tier only allows 4 cores. All used up in Central India.
Fix: Checked quota with `az vm list-usage` and switched region.

---

6. PostgreSQL — Availability Zone Not Supported
Zone 1 not available in South India for this subscription.
Fix: Removed the zone setting, let Azure pick automatically.

---

7. PostgreSQL — Location Restricted
Tried East US, East US 2 — both blocked on free tier.
Fix: Added a separate `db_location` variable in Terraform to test different regions independently.

---

8. PostgreSQL — Skipped
No region worked on the free-tier subscription. Azure restricts PostgreSQL Flexible Server heavily on free accounts.
Fix: Skipped for now. Would work on a paid subscription or with a quota increase request.
