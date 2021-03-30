SELECT users.name 'имя пользователя', communities.name 'название сообщества', permissions.name 'название резрешения'
FROM users
JOIN community_members ON community_members.user_id=users.id
JOIN communities ON communities.id=community_members.community_id
JOIN community_member_permissions on community_member_permissions.member_id=community_members.id
JOIN permissions ON permissions.id=community_member_permissions.permission_id 
WHERE users.name LIKE 't%' OR users.name LIKE 'T%' or permissions.name LIKE '%articles' AND LENGTH(communities.name)>15
ORDER BY users.id,communities.name