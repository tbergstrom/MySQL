select clients.first_name, clients.last_name, billing.amount, billing.charged_datetime
from clients
join billing on clients.id = billing.clients_id;
select sites.domain_name, leads.first_name, leads.last_name
from sites
join leads on sites.id = leads.sites_id;
select clients.first_name as client_first, clients.last_name, sites.domain_name, leads.first_name as leads_first
from clients
join sites on clients.id = sites.clients_id
join leads on sites.id = leads.sites_id;
select clients.first_name, clients.last_name, sites.domain_name
from clients
right join sites on clients.id = sites.clients_id;
select clients.first_name, clients.last_name, AVG(billing.amount)
from clients
join billing on clients.id = billing.clients_id
GROUP BY clients.id;
select group_concat(' ', sites.domain_name) as domains, clients.first_name, clients.last_name
from clients
join sites on clients.id = sites.clients_id
group by clients.id;
-- count
select count(leads.id) as lead_count, sites.domain_name
from sites
join leads on sites.id = leads.sites_id
group by sites.id