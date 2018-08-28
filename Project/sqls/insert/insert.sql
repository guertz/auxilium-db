 
INSERT INTO typology (type) VALUES ('pdf');
INSERT INTO typology (type) VALUES ('video');
INSERT INTO typology (type) VALUES ('image');
INSERT INTO media (id, source, typology_type) VALUES (1, '/assets/elettrogeno/gruppo_continuita', 'image');
INSERT INTO media (id, source, typology_type) VALUES (2, '/assets/manuale', 'pdf');
INSERT INTO resource (id, title, parent) VALUES (1, 'ciclo manutenzione elettrogeno', NULL);
INSERT INTO resource (id, title, parent) VALUES (2, 'informazioni osdcontroller', NULL);
INSERT INTO resource (id, title, parent) VALUES (3, 'informazioni barriera b680h', NULL);
INSERT INTO resource (id, title, parent) VALUES (4, 'verifiche vista controllo integrità prova carico', 1);
INSERT INTO resource (id, title, parent) VALUES (5, 'funzionamento apparecchiature strumentali', 1);
INSERT INTO resource (id, title, parent) VALUES (6, 'integrità chiusure segregazioni', 4);
INSERT INTO resource (id, title, parent) VALUES (7, 'controllo danneggiamenti', 4);
INSERT INTO resource (id, title, parent) VALUES (8, 'integrità targhette segnaletica sicurezza', 4);
INSERT INTO resource (id, title, parent) VALUES (9, 'esame interno scariche elettriche', 4);
INSERT INTO resource (id, title, parent) VALUES (10, 'infiltrazioni acqua condensa quadro', 4);
INSERT INTO resource (id, title, parent) VALUES (11, 'batterie avviamento sistema ricarica', 5);
INSERT INTO resource (id, title, parent) VALUES (12, 'equilibrio fasi uscita carico', 5);
INSERT INTO attachment (resource_id, media_id) VALUES (2, 2);
INSERT INTO attachment (resource_id, media_id) VALUES (3, 2);
INSERT INTO attachment (resource_id, media_id) VALUES (7, 1);
INSERT INTO attachment (resource_id, media_id) VALUES (9, 1);
INSERT INTO attachment (resource_id, media_id) VALUES (10, 1);
INSERT INTO town (cap, name) VALUES ('41011', 'Campogalliano');
INSERT INTO town (cap, name) VALUES ('41033', 'Concordia sul Secchia');
INSERT INTO town (cap, name) VALUES ('41123', 'Modena');
INSERT INTO town (cap, name) VALUES ('41012', 'Carpi');
INSERT INTO town (cap, name) VALUES ('42124', 'Reggio Emilia');
INSERT INTO town (cap, name) VALUES ('46100', 'Mantova');
INSERT INTO office (id, address, mail, phone, town_cap) VALUES (1, 'A1 AdS Secchia Ovest, 506', 'asmodena@autostrade.it', '800 108 108', '41123');
INSERT INTO office (id, address, mail, phone, town_cap) VALUES (2, 'Via Fernando Fornaciari, 1', 'ascarpi@autostrade.it', '059 668253', '41012');
INSERT INTO office (id, address, mail, phone, town_cap) VALUES (3, 'A1 casello di Reggio Emilia', 'asreggio@autostrade.it', '800 269 269', '42124');
INSERT INTO employee (cf, name, surname, address, town_cap, office_id) VALUES ('GRZMTT83G40F230E', 'Matteo', 'Guerzoni', 'Via Donizzetti, 5', '41012', 2);
INSERT INTO employee (cf, name, surname, address, town_cap, office_id) VALUES ('SNGMJT80L08F257P', 'Amarjot', 'Singh', 'Via della pace, 18', '41012', 2);
INSERT INTO employee (cf, name, surname, address, town_cap, office_id) VALUES ('RSSMRA77P03D150X', 'Mario', 'Rossi', 'Via Mazzini, 4', '41011', 1);
INSERT INTO employee (cf, name, surname, address, town_cap, office_id) VALUES ('BNCLGU91C23G224S', 'Luigi', 'Bianchi', 'Via Diazzi, 3', '41123', 1);
INSERT INTO employee (cf, name, surname, address, town_cap, office_id) VALUES ('SRGFRT89C10H223C', 'Sergio', 'Ferretti', 'Via della libertà, 2', '46100', 3);
INSERT INTO employee (cf, name, surname, address, town_cap, office_id) VALUES ('PNFFNC84D07I462B', 'Francesco', 'Panofino', 'Strada Martini, 9', '42124', 1);
INSERT INTO employee (cf, name, surname, address, town_cap, office_id) VALUES ('LTRCRL94P15B819G', 'Carlo', 'Altero', 'Via martiri della libertà, 5', '42124', 3);
INSERT INTO contact (number, employee_cf) VALUES ('+39 3425786932', 'GRZMTT83G40F230E');
INSERT INTO contact (number, employee_cf) VALUES ('+39 059 415622', 'GRZMTT83G40F230E');
INSERT INTO contact (number, employee_cf) VALUES ('+39 3319692342', 'SNGMJT80L08F257P');
INSERT INTO contact (number, employee_cf) VALUES ('+39 0642 25428', 'RSSMRA77P03D150X');
INSERT INTO contact (number, employee_cf) VALUES ('+39 3459611329', 'BNCLGU91C23G224S');
INSERT INTO message ("timestamp", text, resource_id, employee_cf) VALUES ('2018-08-22 17:40:40', 'batterie avviamento sistema ricarica', 11, 'GRZMTT83G40F230E');
INSERT INTO message ("timestamp", text, resource_id, employee_cf) VALUES ('2018-08-22 17:41:11', 'ciclo manutenzione elettrogeno', 1, 'GRZMTT83G40F230E');
INSERT INTO message ("timestamp", text, resource_id, employee_cf) VALUES ('2018-08-22 17:41:18', 'verifiche vista controllo integrità prova carico', 4, 'GRZMTT83G40F230E');
INSERT INTO message ("timestamp", text, resource_id, employee_cf) VALUES ('2018-08-22 17:41:27', 'integrità chiusure segregazioni', 6, 'GRZMTT83G40F230E');
INSERT INTO message ("timestamp", text, resource_id, employee_cf) VALUES ('2018-08-22 17:41:36', 'equilibrio fasi uscita carico', 12, 'GRZMTT83G40F230E');
INSERT INTO message ("timestamp", text, resource_id, employee_cf) VALUES ('2018-08-22 17:41:42', 'ciclo manutenzione elettrogeno', 1, 'SNGMJT80L08F257P');
INSERT INTO message ("timestamp", text, resource_id, employee_cf) VALUES ('2018-08-22 17:41:45', 'funzionamento apparecchiature strumentali', 5, 'SNGMJT80L08F257P');
INSERT INTO message ("timestamp", text, resource_id, employee_cf) VALUES ('2018-08-22 17:41:48', 'batterie avviamento sistema ricarica', 11, 'SNGMJT80L08F257P');
INSERT INTO session (id) VALUES (1000);
INSERT INTO session (id) VALUES (1001);
INSERT INTO session (id) VALUES (1002);
INSERT INTO session (id) VALUES (1003);
INSERT INTO session (id) VALUES (1004);
INSERT INTO shift (id, shift_date, employee_cf, session_id, hour_start, hour_end) VALUES (1, '2018-08-19', 'GRZMTT83G40F230E', 1002, 11, 17);
INSERT INTO shift (id, shift_date, employee_cf, session_id, hour_start, hour_end) VALUES (2, '2018-08-19', 'RSSMRA77P03D150X', 1003, 15, 20);
INSERT INTO shift (id, shift_date, employee_cf, session_id, hour_start, hour_end) VALUES (3, '2018-08-19', 'BNCLGU91C23G224S', 1004, 10, 20);
INSERT INTO shift (id, shift_date, employee_cf, session_id, hour_start, hour_end) VALUES (4, '2018-08-21', 'SNGMJT80L08F257P', 1000, 10, 18);
INSERT INTO shift (id, shift_date, employee_cf, session_id, hour_start, hour_end) VALUES (5, '2018-08-21', 'RSSMRA77P03D150X', 1001, 5, 13);
INSERT INTO shift (id, shift_date, employee_cf, session_id, hour_start, hour_end) VALUES (6, '2018-08-21', 'BNCLGU91C23G224S', 1002, 6, 14);
INSERT INTO shift (id, shift_date, employee_cf, session_id, hour_start, hour_end) VALUES (7, '2018-08-21', 'SRGFRT89C10H223C', 1003, 10, 19);
INSERT INTO shift (id, shift_date, employee_cf, session_id, hour_start, hour_end) VALUES (8, '2018-08-22', 'GRZMTT83G40F230E', 1000, 5, 13);
INSERT INTO shift (id, shift_date, employee_cf, session_id, hour_start, hour_end) VALUES (9, '2018-08-22', 'SRGFRT89C10H223C', 1001, 4, 12);
INSERT INTO shift (id, shift_date, employee_cf, session_id, hour_start, hour_end) VALUES (10, '2018-08-22', 'PNFFNC84D07I462B', 1002, 3, 11);
INSERT INTO maintainer (shift_id) VALUES (1);
INSERT INTO maintainer (shift_id) VALUES (2);
INSERT INTO maintainer (shift_id) VALUES (4);
INSERT INTO maintainer (shift_id) VALUES (6);
INSERT INTO maintainer (shift_id) VALUES (9);
INSERT INTO dispatcher (shift_id) VALUES (3);
INSERT INTO dispatcher (shift_id) VALUES (5);
INSERT INTO dispatcher (shift_id) VALUES (7);
INSERT INTO dispatcher (shift_id) VALUES (8);
INSERT INTO dispatcher (shift_id) VALUES (10);
INSERT INTO condition (name) VALUES ('puntali protetti');
INSERT INTO condition (name) VALUES ('puntali non protetti');
INSERT INTO condition (name) VALUES ('parti scoperte in tensione entro 30 cm');
INSERT INTO condition (name) VALUES ('parti scoperte in tensione oltre 30 cm');
INSERT INTO condition (name) VALUES ('parti scoperte qualsiasi condizione');
INSERT INTO device (name, specs) VALUES ('guanti', 'gialli - ad uso lavorativo');
INSERT INTO device (name, specs) VALUES ('puntali', '0.9m');
INSERT INTO device (name, specs) VALUES ('maschera', NULL);
INSERT INTO device (name, specs) VALUES ('indumenti a norma', NULL);
INSERT INTO task (name, description, resource_id) VALUES ('ELETT_00', 'Consente di dimostrare il corretto funzionamento del gruppo elettrogeno', 6);
INSERT INTO task (name, description, resource_id) VALUES ('ELETT_01', 'Analisi elettrogeno per identificare eventuali danni', 7);
INSERT INTO task (name, description, resource_id) VALUES ('ELETT_02', 'Controllo del quadro per la verifica dei corretti messaggi di segnalazione', 8);
INSERT INTO task (name, description, resource_id) VALUES ('ELETT_03', 'Prova interna sul flusso delle scariche elettriche di tensione', 9);
INSERT INTO task (name, description, resource_id) VALUES ('ELETT_04', 'Messa in sicurezza quadro a seguito di infiltrazione acqua condensata', 10);
INSERT INTO task (name, description, resource_id) VALUES ('ELETT_05', 'Riparazione delle batterie per il funzionamento del gruppo', 11);
INSERT INTO task (name, description, resource_id) VALUES ('ELETT_06', 'Bilanciamento delle fasi per il controllo del carico', 12);
INSERT INTO groupn (title, damage, risk) VALUES ('PE00', 3, 2);
INSERT INTO groupn (title, damage, risk) VALUES ('PE01', 3, 1);
INSERT INTO groupn (title, damage, risk) VALUES ('PE02', 3, 3);
INSERT INTO condition_groupn (condition_name, groupn_title) VALUES ('puntali protetti', 'PE00');
INSERT INTO condition_groupn (condition_name, groupn_title) VALUES ('parti scoperte in tensione entro 30 cm', 'PE00');
INSERT INTO condition_groupn (condition_name, groupn_title) VALUES ('puntali protetti', 'PE01');
INSERT INTO condition_groupn (condition_name, groupn_title) VALUES ('parti scoperte in tensione oltre 30 cm', 'PE01');
INSERT INTO condition_groupn (condition_name, groupn_title) VALUES ('puntali non protetti', 'PE02');
INSERT INTO condition_groupn (condition_name, groupn_title) VALUES ('parti scoperte qualsiasi condizione', 'PE02');
INSERT INTO device_groupn (device_name, groupn_title) VALUES ('guanti', 'PE00');
INSERT INTO device_groupn (device_name, groupn_title) VALUES ('indumenti a norma', 'PE00');
INSERT INTO device_groupn (device_name, groupn_title) VALUES ('guanti', 'PE01');
INSERT INTO device_groupn (device_name, groupn_title) VALUES ('indumenti a norma', 'PE01');
INSERT INTO device_groupn (device_name, groupn_title) VALUES ('guanti', 'PE02');
INSERT INTO device_groupn (device_name, groupn_title) VALUES ('puntali', 'PE02');
INSERT INTO device_groupn (device_name, groupn_title) VALUES ('indumenti a norma', 'PE02');
INSERT INTO task_groupn (task_name, groupn_title) VALUES ('ELETT_05', 'PE00');
INSERT INTO task_groupn (task_name, groupn_title) VALUES ('ELETT_05', 'PE01');
INSERT INTO task_groupn (task_name, groupn_title) VALUES ('ELETT_06', 'PE00');
INSERT INTO task_groupn (task_name, groupn_title) VALUES ('ELETT_06', 'PE01');
INSERT INTO task_groupn (task_name, groupn_title) VALUES ('ELETT_06', 'PE02');
INSERT INTO intervention (maintainer_shift_id, task_name, town_cap, address, description, start_at, end_at) VALUES (1, 'ELETT_01', '41012 ', 'Autostrada A22, km 7', 'Esecuzione intervento di riparazione e controllo causa maltempo bollino rosso', '2018-08-19 11:23:00', '2018-08-19 13:18:00');
INSERT INTO intervention (maintainer_shift_id, task_name, town_cap, address, description, start_at, end_at) VALUES (1, 'ELETT_01', '41012 ', 'Autostrada A22, km 7', 'Esecuzione intervento di riparazione e controllo causa maltempo bollino rosso', '2018-08-19 12:23:00', '2018-08-19 15:36:00');
INSERT INTO intervention (maintainer_shift_id, task_name, town_cap, address, description, start_at, end_at) VALUES (2, 'ELETT_05', '41123 ', 'Autostrada A1, km 4', 'Esecuzione intervento di riparazione e controllo causa maltempo bollino rosso', '2018-08-19 16:37:00', '2018-08-19 18:24:00');
INSERT INTO intervention (maintainer_shift_id, task_name, town_cap, address, description, start_at, end_at) VALUES (4, 'ELETT_00', '41123 ', 'Autostrada A1, km 11', 'Controllo di routine', '2018-08-21 11:18:00', '2018-08-21 11:43:00');
INSERT INTO intervention (maintainer_shift_id, task_name, town_cap, address, description, start_at, end_at) VALUES (4, 'ELETT_02', '41123 ', 'Autostrada A1, km 11', 'Controllo di routine', '2018-08-21 15:27:00', '2018-08-21 16:08:00');
INSERT INTO intervention (maintainer_shift_id, task_name, town_cap, address, description, start_at, end_at) VALUES (6, 'ELETT_03', '41123 ', 'Autostrada A1, km 11', 'Controllo di routine', '2018-08-21 06:33:00', '2018-08-21 07:24:00');
INSERT INTO intervention (maintainer_shift_id, task_name, town_cap, address, description, start_at, end_at) VALUES (6, 'ELETT_06', '41123 ', 'Autostrada A1, km 11', 'Controllo di routine', '2018-08-21 12:58:00', '2018-08-21 13:21:00');
INSERT INTO intervention (maintainer_shift_id, task_name, town_cap, address, description, start_at, end_at) VALUES (9, 'ELETT_04', '42124 ', 'Autostrada A1, km 53', 'Manutenzione per problemi tecnici rilevati', '2018-08-22 05:42:00', '2018-08-22 06:51:00');
INSERT INTO intervention (maintainer_shift_id, task_name, town_cap, address, description, start_at, end_at) VALUES (9, 'ELETT_06', '42124 ', 'Autostrada A1, km 53', 'Regolazione carico del gruppo', '2018-08-22 10:22:00', '2018-08-22 11:13:00');
INSERT INTO inventory (nr, device_name, description) VALUES (1, 'puntali', NULL);
INSERT INTO inventory (nr, device_name, description) VALUES (2, 'puntali', NULL);
INSERT INTO inventory (nr, device_name, description) VALUES (3, 'puntali', NULL);
INSERT INTO inventory (nr, device_name, description) VALUES (4, 'puntali', NULL);
INSERT INTO inventory (nr, device_name, description) VALUES (1, 'guanti', NULL);
INSERT INTO inventory (nr, device_name, description) VALUES (2, 'guanti', NULL);
INSERT INTO inventory (nr, device_name, description) VALUES (3, 'guanti', NULL);
INSERT INTO inventory (nr, device_name, description) VALUES (4, 'guanti', NULL);
INSERT INTO inventory (nr, device_name, description) VALUES (1, 'maschera', 'Modello sostituito a causa di danneggiamenti');
INSERT INTO inventory (nr, device_name, description) VALUES (2, 'maschera', NULL);
INSERT INTO inventory (nr, device_name, description) VALUES (1, 'indumenti a norma', NULL);
INSERT INTO inventory (nr, device_name, description) VALUES (2, 'indumenti a norma', NULL);
INSERT INTO borrow (inventory_nr, inventory_device_name, maintainer_shift_id, motivation, start_at, end_at) VALUES (1, 'guanti', 2, 'DPI minimale per classe di pericolo indicata PE00', '2018-08-19 16:25:00', '2018-08-19 18:38:00');
INSERT INTO borrow (inventory_nr, inventory_device_name, maintainer_shift_id, motivation, start_at, end_at) VALUES (1, 'indumenti a norma', 2, 'DPI minimale per classe di pericolo indicata PE00', '2018-08-19 16:25:00', '2018-08-19 18:38:00');
INSERT INTO borrow (inventory_nr, inventory_device_name, maintainer_shift_id, motivation, start_at, end_at) VALUES (1, 'guanti', 6, 'DPI minimale per classe di pericolo indicata PE01', '2018-08-21 12:50:00', '2018-08-21 13:30:00');
INSERT INTO borrow (inventory_nr, inventory_device_name, maintainer_shift_id, motivation, start_at, end_at) VALUES (1, 'indumenti a norma', 6, 'DPI minimale per classe di pericolo indicata PE01', '2018-08-21 12:50:00', '2018-08-21 13:30:00');
INSERT INTO borrow (inventory_nr, inventory_device_name, maintainer_shift_id, motivation, start_at, end_at) VALUES (1, 'guanti', 9, 'DPI minimale per classe di pericolo indicata PE02', '2018-08-22 10:15:00', '2018-08-22 11:28:00');
INSERT INTO borrow (inventory_nr, inventory_device_name, maintainer_shift_id, motivation, start_at, end_at) VALUES (1, 'indumenti a norma', 9, 'DPI minimale per classe di pericolo indicata PE02', '2018-08-22 10:15:00', '2018-08-22 11:28:00');
INSERT INTO borrow (inventory_nr, inventory_device_name, maintainer_shift_id, motivation, start_at, end_at) VALUES (1, 'puntali', 9, 'DPI minimale per classe di pericolo indicata PE02', '2018-08-22 10:15:00', '2018-08-22 11:28:00');
INSERT INTO assistance (ticket, maintainer_shift_id, start_at, end_at) VALUES (1, 1, '2018-08-19 13:04:11', '2018-08-19 13:27:35');
INSERT INTO assistance (ticket, maintainer_shift_id, start_at, end_at) VALUES (2, 2, '2018-08-19 16:04:11', '2018-08-19 16:27:35');
INSERT INTO assistance (ticket, maintainer_shift_id, start_at, end_at) VALUES (3, 4, '2018-08-21 10:58:43', '2018-08-21 11:07:12');
INSERT INTO assistance (ticket, maintainer_shift_id, start_at, end_at) VALUES (4, 4, '2018-08-21 16:18:39', '2018-08-21 16:37:22');
INSERT INTO assistance (ticket, maintainer_shift_id, start_at, end_at) VALUES (5, 6, '2018-08-21 10:34:25', '2018-08-21 11:13:48');
INSERT INTO assistance (ticket, maintainer_shift_id, start_at, end_at) VALUES (6, 9, '2018-08-22 06:51:35', '2018-08-22 07:04:06');
INSERT INTO attendee (assistance_ticket, dispatcher_shift_id) VALUES (1, 3);
INSERT INTO attendee (assistance_ticket, dispatcher_shift_id) VALUES (2, 3);
INSERT INTO attendee (assistance_ticket, dispatcher_shift_id) VALUES (3, 5);
INSERT INTO attendee (assistance_ticket, dispatcher_shift_id) VALUES (4, 7);
INSERT INTO attendee (assistance_ticket, dispatcher_shift_id) VALUES (5, 7);
INSERT INTO attendee (assistance_ticket, dispatcher_shift_id) VALUES (6, 8);
INSERT INTO attendee (assistance_ticket, dispatcher_shift_id) VALUES (6, 10);
