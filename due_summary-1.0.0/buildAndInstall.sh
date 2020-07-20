#!/bin/bash

rm  duesummary-1.0.0.gem
gem uninstall duesummary
gem build ./duesummary.gemspec
gem install ./duesummary-1.0.0.gem
duesummary 2020-01-01