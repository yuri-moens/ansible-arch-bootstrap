#!/bin/bash
ansible-lint -p playbook.yml roles && echo No linting errors
