#!/bin/bash
set -euo pipefail

sed -Ei '/redhat-release-eula/d' *.xml
sed -Ei 's@Red Hat Enterprise Linux@EuroLinux@g' *.xml
sed -Ei 's@Red Hat CodeReady Linux Builder@EuroLinux CRB@g' *.xml
sed -Ei 's@RHEL@EL@g' *.xml
sed -Ei 's@紅帽企業@Euro@g' *.xml
sed -Ei 's@Red Hat@EuroLinux@g' *.xml
sed -Ei 's@redhat-logos@el-logos@g' *.xml
sed -Ei 's@redhat-release@el-release@g' *.xml
sed -Ei 's@redhat-indexhtml@el-indexhtml@g' *.xml
sed -Ei 's@CodeReadyBuilder@PowerTools@g' *.xml
sed -Ei 's@CodeReady-Builder@PowerTools@g' *.xml
sed -Ei 's@CodeReady Builder@PowerTools@g' *.xml
sed -Ei 's@codeready-builder@powertools@g' *.xml
# this is failsafe
sed -Ei 's@CodeReady@PowerTools@g' *.xml
sed -Ei 's@codeready@powertools@g' *.xml
sed -Ei '/DOCTYPE comps PUBLIC/d' *.xml
# Removed Packages
sed -Ei '/subscription-manager/d' baseos-*.xml
sed -Ei '/insights-client/d' appstream-*.xml
# Subscription manager
sed -Ei '/dnf-plugin-subscription-manager/d' *.xml
sed -Ei '/dnf-plugin-subscription-manager/d'  *.xml
sed -Ei '/subscription-manager-cockpit/d'  *.xml
sed -Ei '/subscription-manager-plugin-container/d'  *.xml
