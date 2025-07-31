control 'SV-214672' do
  title 'The Juniper SRX Services Gateway VPN must use AES256 for the IPsec proposal to protect the confidentiality of remote access sessions.'
  desc 'Without confidentiality protection mechanisms, unauthorized individuals may gain access to sensitive information via a remote access session. The Advance Encryption Standard (AES) encryption is critical to ensuring the privacy of the IPsec session; it is imperative that AES is used for encryption operations.

The CNSSP 15 compliant algorithms recommended by the NSA for IPsec are AES 256 with SHA384 and cbc or gsm confidentiality mode.

Remote access is access to DOD nonpublic information systems by an authorized user (or an information system) communicating through an external, nonorganization-controlled network. Remote access methods include broadband and wireless connections.'
  desc 'check', 'Verify all Internet Key Exchange (IKE) proposals are set to use the AES256 encryption algorithm.

[edit]
show security ipsec

View the value of the encryption algorithm for each defined proposal.

If the value of the encryption algorithm for any IPsec proposal is not set to use an AES256 algorithm, this is a finding.'
  desc 'fix', 'The following example commands configure the IPsec (phase 2) proposals. 

[edit]
set security ipsec proposal <IPSEC-PROPOSAL-NAME> encryption-algorithm aes-256-cbc'
  impact 0.7
  tag check_id: 'C-15873r1056077_chk'
  tag severity: 'high'
  tag gid: 'V-214672'
  tag rid: 'SV-214672r1056079_rule'
  tag stig_id: 'JUSX-VN-000005'
  tag gtitle: 'SRG-NET-000062'
  tag fix_id: 'F-15871r1056078_fix'
  tag 'documentable'
  tag legacy: ['V-66021', 'SV-80511']
  tag cci: ['CCI-000068', 'CCI-004891']
  tag nist: ['AC-17 (2)', 'SC-7 (29)']
end
