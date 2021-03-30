SELECT  users.name 'Имя пользователя', communities.name 'Название сообщества', community_members.joined_at 'Дата вступления'
FROM users
join community_members ON users.id = community_members.user_id
join communities ON community_members.community_id = communities.id
WHERE users.name='Caitlin Gilmore' AND communities.created_at>'2013-01-01 00:00:00'
ORDER BY community_members.joined_at DESC