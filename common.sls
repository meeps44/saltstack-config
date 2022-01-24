install_common_tools:
  pkg.installed:
    - pkgs:
      - python3
      - autoconf
      - build-essential
      - git
      - libtool

create my_new_directory:
 file.directory:
   - name: ~/git
   - user: root
   - group: root
   - mode: 755

Clone the Paris-Traceroute repo:
  pkg.installed: 
    - name: git autoconf build-essential libtool # make sure git is installed first!
  git.latest:
    - name:  https://github.com/meeps44/libparistraceroute.git"
    - rev: develop
    - target: ~/git