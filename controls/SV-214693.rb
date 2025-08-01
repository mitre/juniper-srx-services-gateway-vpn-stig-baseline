control 'SV-214693' do
  title 'The Juniper SRX Services Gateway VPN must only allow the use of DoD PKI established certificate authorities for verification of the establishment of protected sessions.'
  desc 'Untrusted certificate authorities (CA) can issue certificates, but they may be issued by organizations or individuals that seek to compromise DoD systems or by organizations with insufficient security controls. If the CA used for verifying the certificate is not a DoD-approved CA, trust of this CA has not been established.

The DoD will only accept PKI certificates obtained from a DoD-approved internal or external certificate authority. Reliance on CAs for the establishment of secure sessions includes, for example, the use of Internet Key Exchange (IKE) authentication certificates. 

This requirement focuses on communications protection for the application session rather than for the network packet. Network elements that perform these functions must be able to identify which session identifiers were generated when the sessions were established.'
  desc 'check', 'Verify the all IKE proposals are set to use the AES encryption algorithm.

[edit]
show security ike

View the value of the authentication-method for each defined proposal.

If the value of the authentication-method for each defined proposal is not set to use AES, this is a finding.'
  desc 'fix', 'The following example commands configure the IKE (phase 1) proposals. Use certificates instead of pre-shared keys to establish the IKE phase 1 tunnel. 

This proposal requires AES 256-bit encryption

set security ike proposal p1-proposal authentication-method rsa-signatures'
  impact 0.5
  tag check_id: 'C-15894r297666_chk'
  tag severity: 'medium'
  tag gid: 'V-214693'
  tag rid: 'SV-214693r856577_rule'
  tag stig_id: 'JUSX-VN-000026'
  tag gtitle: 'SRG-NET-000355'
  tag fix_id: 'F-15892r297667_fix'
  tag 'documentable'
  tag legacy: ['V-66673', 'SV-81163']
  tag cci: ['CCI-002470']
  tag nist: ['SC-23 (5)']
end
