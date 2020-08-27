#!/bin/bash

rm  due_summary-1.0.0.gem
gem uninstall due_summary
gem build ./due_summary.gemspec
gem install ./due_summary-1.0.0.gem
due_summary 2020-01-01