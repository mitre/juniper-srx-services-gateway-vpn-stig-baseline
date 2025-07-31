control 'SV-214690' do
  title 'The Juniper SRX Services Gateway VPN Internet Key Exchange (IKE) must be configured to use an approved Commercial Solution for Classified (CSfC) when transporting classified traffic across an unclassified network.'
  desc "Use of weak or untested encryption algorithms undermines the purposes of using encryption to protect data.

The National Security Agency/Central Security Service's (NSA/CSS) CSfC Program enables commercial products to be used in layered solutions to protect classified National Security Systems (NSS) data. Currently, Suite B cryptographic algorithms are specified by NIST and are used by NSA's Information Assurance Directorate in solutions approved for protecting classified and unclassified NSS. However, quantum resistant algorithms will be required for future required Suite B implementations."
  desc 'check', 'If the device is not used to transport classified traffic across an unclassified network, this is not applicable.

[edit]
show security ike <suiteb-proposal-name>

View the configured options.

If the IKE proposal encryption algorithms are not configured in compliance with CSfC, this is a finding.'
  desc 'fix', 'Navigate to the IKE proposal stanza. 

Example stanza.
[edit]
set security ike proposal <name-proposal>
set ike proposal <name-proposal> authentication-method ecdsa-signatures-384
set ike proposal <name-proposal> dh-group group20
set ike proposal <name-proposal> authentication-algorithm sha-384
set ike proposal <name-proposal> encryption-algorithm aes-256-cbc'
  impact 0.7
  tag check_id: 'C-15891r1056092_chk'
  tag severity: 'high'
  tag gid: 'V-214690'
  tag rid: 'SV-214690r1056094_rule'
  tag stig_id: 'JUSX-VN-000023'
  tag gtitle: 'SRG-NET-000352'
  tag fix_id: 'F-15889r1056093_fix'
  tag 'documentable'
  tag legacy: ['V-66625', 'SV-81115']
  tag cci: ['CCI-002450']
  tag nist: ['SC-13 b']
end
