# README

## todo

* ansible環境設定ファイル

```bash
$ cat ansible.cfg
[defaults]
hostfile = inventory

[ssh_connection]
ssh_args = -F ssh.config
```

* 展開対象を記述したinventoryファイル

```bash
$ cat inventory
default
```

```bash
$ vagrant ssh-config > ssh.config
```

* 実行

```bash
$ ansible-playbook playbooks/rpm.yml
```

