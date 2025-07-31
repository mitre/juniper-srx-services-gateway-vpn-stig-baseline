control 'SV-214673' do
  title 'The Juniper SRX Services Gateway VPN must use AES256 encryption for the Internet Key Exchange (IKE) proposal to protect the confidentiality of remote access sessions.'
  desc 'Without confidentiality protection mechanisms, unauthorized individuals may gain access to sensitive information via a remote access session. The Advance Encryption Standard (AES) algorithm is critical to ensuring the privacy of the IKE session responsible for establishing the security association and key exchange for an IPsec tunnel. AES is used for encryption operations.

The CNSSP 15 compliant algorithms recommended by the NSA for IKE are AES256 with SHA384 and DH-16 or higher.

Remote access is access to DOD nonpublic information systems by an authorized user (or an information system) communicating through an external, nonorganization-controlled network. Remote access methods include broadband and wireless connections.'
  desc 'check', 'Verify all IKE proposals are set to use the AES256 encryption algorithm.

[edit]
show security ike

View the value of the encryption algorithm for each defined proposal.

If the value of the encryption algorithm for any IKE proposal is not configured to use AES256, this is a finding.'
  desc 'fix', 'The following example commands configure the IKE (phase 1) proposals. 

[edit]
set security ike proposal <IKE-PROPOSAL-NAME> encryption-algorithm aes-256-cbc'
  impact 0.7
  tag check_id: 'C-15874r1056080_chk'
  tag severity: 'high'
  tag gid: 'V-214673'
  tag rid: 'SV-214673r1056082_rule'
  tag stig_id: 'JUSX-VN-000006'
  tag gtitle: 'SRG-NET-000062'
  tag fix_id: 'F-15872r1056081_fix'
  tag 'documentable'
  tag legacy: ['V-66617', 'SV-81107']
  tag cci: ['CCI-000068', 'CCI-004891']
  tag nist: ['AC-17 (2)', 'SC-7 (29)']
end
