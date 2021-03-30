SELECT communities.id 'id сообщества', communities.name 'название сообщества', permissions.name 'название резрешения', COUNT(community_member_permissions.permission_id) 'количетсво пользователей с разрешением'
FROM users
JOIN community_members ON community_members.user_id=users.id
JOIN communities ON communities.id=community_members.community_id
JOIN community_member_permissions on community_member_permissions.member_id=community_members.id
JOIN permissions ON permissions.id=community_member_permissions.permission_id
GROUP BY communities.id,permissions.id
HAVING COUNT(community_member_permissions.permission_id)>5
LIMIT 100