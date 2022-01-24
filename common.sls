install_common_tools:
  pkg.installed:
    - pkgs:
      - rsync
      - lftp
      - curl
      - git
      - python3

create my_new_directory:
 file.directory:
   - name: /opt/my_new_directory
   - user: root
   - group: root
   - mode: 755

Clone the SaltStack bootstrap script repo:
  pkg.installed: 
    - name: git # make sure git is installed first!
  git.latest:
    - name: https://github.com/saltstack/salt-bootstrap
    - rev: develop
    - target: /tmp/salt