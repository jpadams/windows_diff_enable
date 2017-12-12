
# windows_diff_enable

Enables Windows Puppet file resource diff on par with Linux

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with windows_diff_enable](#setup)
    * [What windows_diff_enable affects](#what-windows_diff_enable-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with windows_diff_enable](#beginning-with-windows_diff_enable)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Description

Enables Windows Puppet file resource diff on par with Linux by installing GNU `diff.exe` via Chocolatey and setting approprite config settings in puppet.conf.

This allows for a better experience viewing file changes in the Puppet run logs on the command line and in Puppet Enterprise reports.

## Setup

### Setup Requirements

Requires the `puppetlabs-inifile` and the `chocolatey-chocolatey` module to be present on your master.


### Beginning with windows_diff_enable

Just classify your Windows nodes with `windows_diff_enable` and you'll be good to go!

## Usage

There are two parameters that most users won't have to touch:
 * `diff_command` - Default value: `'C:\ProgramData\chocolatey\lib\diffutils\tools\bin\diff.exe'` is the location of the diff.exe or other diff executable.
 * `puppet_conf` - Default value: `'C:\ProgramData\PuppetLabs\puppet\etc\puppet.conf'` is the location of the puppet.conf file on the agent.
