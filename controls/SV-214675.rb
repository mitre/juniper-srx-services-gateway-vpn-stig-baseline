control 'SV-214675' do
  title 'The Juniper SRX Services Gateway VPN must be configured to use IPsec with SHA256 or greater to negotiate hashing to protect the integrity of remote access sessions.'
  desc 'Without strong cryptographic integrity protections, information can be altered by unauthorized users without detection. 

Remote access VPN provides access to DOD nonpublic information systems by an authorized user (or an information system) communicating through an external, nonorganization-controlled network.'
  desc 'check', 'Verify all IPSec proposals are set to use the sha-256 hashing algorithm.

[edit]
show security ipsec proposal <IPSEC-PROPOSAL-NAME>

View the value of the encryption algorithm for each defined proposal.

If the value of the encryption algorithm option for all defined proposals is not set to use SHA256 or greater, this is a finding.'
  desc 'fix', 'The following example commands configure the IPSec proposal.

set security ipsec proposal <IPSEC-PROPOSAL-NAME> authentication-algorithm hmac-sha-256-128'
  impact 0.5
  tag check_id: 'C-15876r1056086_chk'
  tag severity: 'medium'
  tag gid: 'V-214675'
  tag rid: 'SV-214675r1056088_rule'
  tag stig_id: 'JUSX-VN-000008'
  tag gtitle: 'SRG-NET-000063'
  tag fix_id: 'F-15874r1056087_fix'
  tag 'documentable'
  tag legacy: ['V-66649', 'SV-81139']
  tag cci: ['CCI-001453', 'CCI-000803']
  tag nist: ['AC-17 (2)', 'IA-7']
end
