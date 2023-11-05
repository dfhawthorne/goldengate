#!/usr/bin/env bash
# --------------------------------------------------------------------------------------
# Start Goldengate VMs, if needed.
# --------------------------------------------------------------------------------------

for vm in goldengate1 goldengate2
do
    xl list "${vm}" >/dev/null && continue
    xl create /OVS/running_pool/"${vm}"/hvm.cfg
done
