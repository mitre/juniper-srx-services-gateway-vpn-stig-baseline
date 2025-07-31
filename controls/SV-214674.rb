control 'SV-214674' do
  title 'The Juniper SRX Services Gateway VPN must be configured to use Diffie-Hellman (DH) group 15 or higher.'
  desc 'Use of an approved DH algorithm ensures the Internet Key Exchange (IKE) (phase 1) proposal uses FIPS-validated key management techniques and processes in the production, storage, and control of private/secret cryptographic keys. The security of the DH key exchange is based on the difficulty of solving the discrete logarithm from which the key was derived. Hence, the larger the modulus, the more secure the generated key is considered to be. 

The DH group selected must have a minimum of a 3072-bit modulus to protect up to TOP SECRET.'
  desc 'check', 'Verify all IKE proposals are set to use a FIPS-validated dh-group.

[edit]
show security ike <P1-PROPOSAL-NAME>

View the IKE options dh-group option.

If the IKE option is not set to a FIPS 140-2/140-3 validated dh-group, this is a finding.'
  desc 'fix', 'The following command is an example of how to configure the IKE (phase 1) proposals. 

Example:
[edit]
set security ike proposal <P1-PROPOSAL-NAME> dh-group group19'
  impact 0.7
  tag check_id: 'C-15875r1056083_chk'
  tag severity: 'high'
  tag gid: 'V-214674'
  tag rid: 'SV-214674r1056179_rule'
  tag stig_id: 'JUSX-VN-000007'
  tag gtitle: 'SRG-NET-000062'
  tag fix_id: 'F-15873r1056084_fix'
  tag 'documentable'
  tag legacy: ['V-66647', 'SV-81137']
  tag cci: ['CCI-000068', 'CCI-004891']
  tag nist: ['AC-17 (2)', 'SC-7 (29)']
end
