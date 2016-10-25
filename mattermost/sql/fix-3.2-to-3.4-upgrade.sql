# per https://docs.mattermost.com/administration/upgrade.html#upgrade-team-edition-to-3-1-x-and-later

UPDATE Systems SET Value = '3.1.0' WHERE Name = 'Version';
