name             'grant_logon_as_service'
maintainer       'Dmitry Ivanov'
maintainer_email 'iva9im@gmail.com'
license          'MIT'
description      'Grants logon as a service permissions to user'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url       'https://github.com/ivadim/grant_logon_as_service' if respond_to?(:source_url)
issues_url       'https://github.com/ivadim/grant_logon_as_service/issues' if respond_to?(:issues_url)
version          '1.0.0'

supports 'windows'

depends 'windows'