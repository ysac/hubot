# README

## memo

* http://gihyo.jp/dev/serial/01/hubot

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

* vagrant環境情報をファイルに出力

```bash
$ vagrant ssh-config > ssh.config
```

* 実行

```bash
$ vagrant up
$ vagrant ssh-config > ssh.config
$ ansible-playbook playbooks/rpm.yml
```

