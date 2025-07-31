control 'SV-214689' do
  title 'The Juniper SRX Services Gateway VPN must terminate all network connections associated with a communications session at the end of the session.'
  desc 'Idle TCP sessions can be susceptible to unauthorized access and hijacking attacks. IKE Dead Peer Detection (DPD) is a protocol that verifies the availability of IPsec peer devices by sending encrypted IKE Phase 1 notification payloads to peers.

Note: For dynamic (remote access) VPN, the TCP keep-alive for remote access is implemented in the Juniper SRX Firewall STIG.'
  desc 'check', 'Navigate to the IKE configuration.

[edit]
show security ike gateway <ike-peer-name>

If the DPD options are not configured, this is a finding.'
  desc 'fix', 'For site-to-site VPN, configure an Internet Key Exchange (IKE) gateway that includes DPD parameters such as in the following example.

set security ike gateway IKE-PEER ike-policy IKE-POLICY
set security ike gateway IKE-PEER address <Peer IP Address>
set security ike gateway IKE-PEER dead-peer-detection always-send
set security ike gateway IKE-PEER dead-peer-detection interval 10
set security ike gateway IKE-PEER dead-peer-detection threshold 2
set security ike gateway IKE-PEER local-identity inet <IPv4 Address in Certificate>
set security ike gateway IKE-PEER remote-identity inet <IPv4 Address in Remote
Certificate>
set security ike gateway IKE-PEER external-interface <interface name>
set security ike gateway IKE-PEER version v2-only'
  impact 0.5
  tag check_id: 'C-15890r1056089_chk'
  tag severity: 'medium'
  tag gid: 'V-214689'
  tag rid: 'SV-214689r1056184_rule'
  tag stig_id: 'JUSX-VN-000022'
  tag gtitle: 'SRG-NET-000213'
  tag fix_id: 'F-15888r1056090_fix'
  tag 'documentable'
  tag legacy: ['SV-81171', 'V-66681']
  tag cci: ['CCI-001133']
  tag nist: ['SC-10']
end
