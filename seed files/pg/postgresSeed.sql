--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-09-15 14:06:11
SET session_replication_role = replica;

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3362 (class 0 OID 25918)
-- Dependencies: 209
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._prisma_migrations VALUES ('5cae9d75-00b2-47bc-9e22-c14654050615', '18eba71df4915a9f597e4d9bae05a11868192fa48aa1403f23c1af35e9b6baf9', '2022-09-14 15:06:45.808042-04', '20220914190645_first_migration', NULL, NULL, '2022-09-14 15:06:45.742437-04', 1);


--
-- TOC entry 3368 (class 0 OID 25948)
-- Dependencies: 215
-- Data for Name: founders; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.founders VALUES (1, 'Johnny', 'Test', 'test@test.com', '1234567890', '{1}');


--
-- TOC entry 3364 (class 0 OID 25930)
-- Dependencies: 211
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.companies VALUES (47, 1, '{healthcare,"med device"}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, '3D Urologic', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (48, 1, '{healthcare,"med device",hardware}', 'Incubator (Remote)', '2000-01-01', false, 750, NULL, 750, 'Argyle Scientific', 0, 0, '{"Pathbreaker Ventures"}', '{"Pathbreaker Ventures"}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (49, 1, '{software,healthcare,B2B}', 'Incubator (Remote)', '2000-01-01', false, NULL, NULL, NULL, 'BioflightVR', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (50, 1, '{edtech,software}', 'Accelerator', '2000-01-01', false, NULL, NULL, NULL, 'BrainZones LTD', NULL, NULL, '{"Maccabee Ventures","January Ventures"}', '{}', '{"Maccabee Ventures"}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (51, 1, '{healthcare,AI,ML,software}', 'Incubator (Remote)', '2000-01-01', false, NULL, NULL, NULL, 'BTechncl', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (52, 1, '{ecommerce,software}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'Consolidus', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (53, 1, '{}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'Data Command', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (54, 1, '{AI,"natural language processing",software,ML}', 'Incubator (Remote)', '2000-01-01', false, NULL, NULL, NULL, 'Drips', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (55, 1, '{}', 'Incubator (Remote)', '2000-01-01', false, NULL, NULL, NULL, 'Echo Investing Inc.', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (56, 1, '{}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'Embold', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (57, 1, '{}', 'Incubator (Remote)', '2000-01-01', false, NULL, NULL, NULL, 'Empower DDS', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (58, 1, '{"data analytics",software}', 'Accelerator', '2000-01-01', false, NULL, NULL, NULL, 'Eric Does Data', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (59, 1, '{}', 'Incubator (Remote)', '2000-01-01', false, NULL, NULL, NULL, 'eSens', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (60, 1, '{water,software,AI,environment,climate}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'Fontus Blue', 600, 50, '{"Urban Innovation Fund"}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (61, 1, '{solar,climate,software}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'geometis', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (62, 1, '{healthcare,software,"B2B SaaS"}', 'Accelerator', '2000-01-01', false, NULL, NULL, NULL, 'Global Health Metrics', NULL, NULL, '{M25,"Maccabee Ventures","Newark Venture Partners","Story Ventures","January Ventures"}', '{}', '{"Maccabbe Ventures"}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (63, 1, '{Web3,software,blockchain,crypto}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'Graffle', NULL, NULL, '{M25}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (64, 1, '{"B2B SaaS",SaaS,AI,manufacturing,software}', 'Accelerator', '2000-01-01', false, NULL, NULL, NULL, 'Lahmonator', NULL, NULL, '{"Maccabee Ventures","Newark Venture Partners","Story Ventures","January Ventures","Elevate Ventures"}', '{}', '{"Maccabee Ventures"}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (65, 1, '{"B2B SaaS",SaaS,AI,ML,solar,climate,software,environment}', 'Accelerator', '2000-01-01', false, NULL, NULL, NULL, 'LEAF Solar Design Assistant', NULL, NULL, '{M25,"Urban Innovation Fund","Pathbreaker Ventures","Newark Venture Partners","Story Ventures",Floodgate,"First Round Capital"}', '{}', '{Floodgate}', '{M25}', '{}', 0);
INSERT INTO public.companies VALUES (66, 1, '{}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'MedaSync', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (67, 1, '{}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'MIC Monitor', NULL, NULL, '{"Unshackled Ventures"}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (68, 1, '{}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'Mondall', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (69, 1, '{"med device",healthcare}', 'Incubator (Remote)', '2000-01-01', true, 750, 5000, NULL, 'Nelson Innovations', 10, NULL, '{25madison,"Fusion Fund","Good News Ventures","Ground Up Ventures","Lakehouse Ventures",LAUNCH,"Maccabee Ventures","First Round Capital",Homebrew,TMV}', '{"Fusion Fund",25madison,"Lakehouse Ventures"}', '{"Maccabee Ventures","Good News Ventures",LAUNCH,25madison,Floodgate,"Fusion Fund","First Round Capital"}', '{"Fusion Fund"}', '{}', 0);
INSERT INTO public.companies VALUES (70, 1, '{}', 'Accelerator', '2000-01-01', false, NULL, NULL, NULL, 'Nevermaps Inc.', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (71, 1, '{}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'NicheVision Incorporated', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (72, 1, '{}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'O2 RegenTech', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (73, 1, '{healthcare,software}', 'Incubator (Remote)', '2000-01-01', false, NULL, NULL, NULL, 'orthobrain', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (74, 1, '{}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'Public Insight Corporation', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (75, 1, '{sensors,"software enabled hardware",sports,"sports tech",hardware,wellbeing}', 'Incubator', '2000-01-01', false, 750, NULL, 350, 'SweatID', NULL, NULL, '{"Pathbreaker Ventures","Maccabee Ventures","Story Ventures",25madison,"Advantage Sports Fund","Alpaca VC","BBG Ventures","Good News Ventures","Pathbreaker Ventures","twentytwo ventures"}', '{"Pathbreaker Ventures",25madison}', '{"Maccabee Ventures","Alpaca VC"}', '{25madison,"Pathbreaker Ventures"}', '{}', 0);
INSERT INTO public.companies VALUES (76, 1, '{AI,gaming}', 'Accelerator', '2000-01-01', false, NULL, NULL, NULL, 'RustBit Studio', NULL, NULL, '{"Maccabee Ventures","January Ventures"}', '{}', '{"Maccabee Ventures"}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (77, 1, '{"med device",health}', 'Incubator (Remote)', '2000-01-01', false, NULL, NULL, NULL, 'S.C.O.P.E. Medical', NULL, NULL, '{Floodgate}', '{}', '{Floodgate}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (78, 1, '{}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'S4 MOBILE LABORATORIES', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (79, 1, '{}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'Saberlogic', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (80, 1, '{SaaS,"B2B SaaS",software}', 'Accelerator', '2000-01-01', false, 1000, 4000, 1000, 'TonDone', NULL, 10, '{"Maccabee Ventures","January Ventures","Wonder Ventures",M25,25madison,"Surface VC","Mucker Capital","Betaworks Ventures","Cofounders Capital","Crosscut Ventures","Good News Ventures","Ground Up Ventures",Homebrew,"Hustle Fund","Lakehouse Ventures",LAUNCH,"New Stack Ventures","Plug and Play Ventures","Right Side Capital Management","twentytwo ventures"}', '{"Wonder Ventures",M25,"Surface VC",LAUNCH,"Plug and Play Ventures",25madison,"Mucker Capital","Crosscut Ventures"}', '{"Maccabee Ventures",M25,"New Stack Ventures"}', '{"Wonder Ventures",M25,LAUNCH,"Surface VC","Mucker Capital"}', '{"Wonder Ventures"}', 550);
INSERT INTO public.companies VALUES (81, 1, '{food,agtech}', 'Incubator', '2000-01-01', false, NULL, NULL, NULL, 'Vigeo', NULL, 125, '{M25,"Pathbreaker Ventures","Urban Innovation Fund"}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (82, 1, '{radar,AI,ML,software}', 'Incubator', '2000-01-01', false, 50, NULL, NULL, 'Xadite Perceptions', NULL, NULL, '{"Pathbreaker Ventures","Story Ventures"}', '{}', '{"Urban Us"}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (83, 1, '{healthcare,software,SaaS,"B2B SaaS"}', 'NEOSVF', '2000-01-01', false, 1000, 4500, NULL, 'Hyr Medical', NULL, 5, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (84, 1, '{fintech,software,"b2c software",b2c}', 'NEOSVF', '2000-01-01', false, 1000, 9000, 500, 'Wizest', 0, 0, '{25madison,"Alpaca VC","Betaworks Ventures","Good News Ventures","Ground Up Ventures","Hustle Fund","Lakehouse Ventures","Maccabee Ventures","Mucker Capital","New Stack Ventures","Plug and Play Ventures","twentytwo ventures","Wonder Ventures"}', '{"Lakehouse Ventures","New Stack Ventures",25madison}', '{"Hustle Fund","Plug and Play Ventures","Alpaca VC","twentytwo ventures"}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (85, 1, '{software,consumer,manufacturing}', 'NEOSVF', '2000-01-01', false, NULL, NULL, NULL, 'Baru', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (86, 1, '{proptech}', NULL, '2000-01-01', false, 2000, NULL, NULL, 'Apartmentpainters', NULL, 80, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (87, 1, '{"med device",healthcare,hardware,"internet of things","healthcare software",iot,hospital}', 'NEOSVF', '2000-01-01', false, 1000, 8000, 850, 'iRxReminder', 300, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (88, 1, '{"e commerce",ecommerce,software,logistics,marketplaces,"supply chain logistics",retail,b2c,b2b,"consumer software",consumer,"consumer service"}', 'Accelerator', '2000-01-01', false, NULL, NULL, 1000, 'Afters', 50, NULL, '{"Amplify LA","New Stack Ventures","Betaworks Ventures","Crosscut Ventures",M25,"Maven Ventures","Mucker Capital","New Stack Ventures","Right Side Capital Management",TMV,"twentytwo ventures",IrishAngels,"Darling Ventures",Floodgate,"Ovo Fund","Elevate Capital"}', '{"Amplify LA",IrishAngels,M25,Unshackled}', '{"New Stack Ventures",Floodgate,"Ovo Fund","Right Side Capital Management",Unshackled,"Crosscut Ventures","Maven Ventures"}', '{"Amplify LA"}', '{}', 0);
INSERT INTO public.companies VALUES (89, 1, '{"b2b saas",saas}', 'NEOSVF', '2000-01-01', true, 15000, NULL, 10000, 'Factored Quality', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (90, 1, '{consumer,"med device",hardware,"consumer product",health,healthcare}', 'STRIDE', '2000-01-01', false, 375, NULL, 500, 'Courtesy Cups', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (91, 1, '{"med device"}', 'Incubator', '2000-01-01', true, 10000, 30000, 10000, 'Sonostik', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);
INSERT INTO public.companies VALUES (92, 1, '{healthcare,"software enabled hardware","senior health",iot,"internet of things"}', NULL, '2000-01-01', true, 1000, NULL, 1000, 'Carebloom', NULL, NULL, '{}', '{}', '{}', '{}', '{}', 0);


--
-- TOC entry 3366 (class 0 OID 25939)
-- Dependencies: 213
-- Data for Name: firms; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.firms VALUES (4, 'Amplify LA', 'http://amplify.la/', 'Los Angeles, CA', 'Willing to be first check. Will fund idea stage, beta, full product. 250k-1M checks, 500k-2.5M rounds, lead or co-lead. Mixture of product and tech background on team. Support portfolio cos with later raise connections, hiring, reviewing product, cust intros. Don’t do hardware, biotech, pharma, Anything with long run to product-market fit. Interested in ecomm enablement cos. Paul Bricault, MP, paul.bricault@amplify.la', 'met', '2021-11-12 00:00:00-05', 250, 1000, true, '{"pre seed",seed}', '{"e commerce"}', '{hardware,biotech,pharma}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (16, 'Crosscut Ventures', 'https://www.crosscut.vc/', 'Los Angeles, CA', 'LA based VC firm, tech focused', 'met', '2022-01-26 00:00:00-05', 100, 2500, true, '{pre-seed,seed}', '{software}', '{hardware}', true, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (18, 'First Round Capital', 'https://firstround.com/', 'Philadelphia, PA', 'Will look at hardware, hit rate will be low', 'met', '2022-02-21 00:00:00-05', 500, 6000, true, '{seed}', '{agnostic,enterprise,consumer,fintech,healthcare}', '{alcohol,drugs}', false, false, NULL, 12, 15, NULL);
INSERT INTO public.firms VALUES (1, '25madison', 'https://www.25madison.com/', 'New York, NY', 'Incubator too. Hand-build 3 to 4 companies a year, co-invest in more', 'met', '2022-01-14 00:00:00-05', 250, 2000, true, '{pre-seed,seed,A}', '{agnostic,consumer,health}', '{biotech,"med device",fintech}', false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (3, 'Alpaca VC', 'https://alpaca.vc/', 'New York, NY', '2m-5m rounds, looking to lead or co lead, will be 2nd or 3rd check. Industry agnostic, have more background in proptech, consumer, mktplaces. Not the most technical team, not going for dev tools, B2B saas. More consumerized software. No med devices, med software is a go. Earlier is better for intros, like to be able to track progress for a bit. Ryan Freedman, partner, ryan@alpaca.vc', 'met', '2021-12-02 00:00:00-05', 250, 250, true, '{"pre seed",seed}', '{agnostic,proptech,consumer,marketplaces}', '{"dev tools","B2B SaaS","med device",hardware}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (8, 'BBG Ventures', 'https://www.bbgventures.com/', 'New York, NY', 'Invest in startups with female founders. B2B/B2C (not D2C), Health and Wellbeing, Future of Education and Work, Climate Friendly Products and Platforms, Overlooked and Emerging Consumers. Somewhat hands on after investment: Hiring, marketing, fundraising. Nisha Dua, MP, nisha.dua@bbgventures.com', 'met', '2022-01-12 00:00:00-05', 500, 1000, true, '{pre-seed,seed}', '{B2B,B2C,health,wellbeing,education,"future of work",climate,consumer}', '{"med tech"}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (17, 'Elevate Capital', 'https://elevate.vc/', 'Hillsboro, OR', 'They have three funds. Inclusive fund: $25 - $100k checks. Fund females, minorities, and veterans. (Oregon only) Capital Fund II: $100k to $2M. Underrepresented minoirity (women, veterans, BIPOC, LGBTQ) founders in tech and healthcare. Innovation Gap Fund $50k to $250k (Oregon companies only). Nitin Rai, MP, nitin@elevate.vc', 'met', '2022-01-12 00:00:00-05', 500, 2000, true, '{pre-seed,seed}', '{tech,healthcare,"healthcare software","care delivery","clean tech",hospital}', '{"med device"}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (21, 'Good News Ventures', 'https://goodnewsventures.com/', 'Toronto, Ontario, Canada', '100-500k checks, syndicate deals on angellist so checks can run larger. 90 LPs, try to connect LPs with startups to facilitate growth post investment (board seats, etc.). Mohan Markandaier, MP, mohan@goodnewsventures.com.', 'met', '2022-01-05 00:00:00-05', 100, 550, false, '{pre-seed,seed}', '{agnostic}', '{"med device",B2C}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (27, 'Lakehouse Ventures', 'https://lakehouse.vc/', 'New York, NY', 'Pre seed VC in NY city, usually invest in concept phase. Focus on products, services, platforms that people use every day. Have done baby formula to hospice care.', 'met', '2022-01-24 00:00:00-05', 500, 1000, true, '{pre-seed}', '{consumer,"consumer product","consumer service","consumer software","B2C software",software}', '{Crypto,cannabis,gaming,fashion,media}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (28, 'LAUNCH', 'https://launch.co/', 'San Francisco, CA', 'Main syndicate: 50k MRR req. SaaS syndicate: 10k MRR req (less for high growth). Submit all referals through openscouting.com', 'met', '2022-01-12 00:00:00-05', 250, 2000, false, '{pre-seed,seed,A,B}', '{agnostic,software}', '{hardware,"med device"}', true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (29, 'M25', 'https://m25vc.com/', 'Chicago, IL', 'No med device/biotech/anything touching FDA. 5-10% ownership stake,  8MM pre or lower. Victor Gutwein, MP, victor@m25vc.com. Will always ask for deck before taking an intro', 'met', '2022-01-13 00:00:00-05', 200, 500, true, '{pre-seed,seed}', '{agnostic}', '{"life science",biotech,"med device",vices}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (30, 'Maccabee Ventures', 'https://www.maccabee.vc/', 'New York, NY', NULL, 'met', '2022-01-19 00:00:00-05', 50, 150, false, '{pre-seed,seed}', '{"Senior health","digital health",wellness,cyber,proptech,saas,AI,fintech}', '{"med device"}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (32, 'Mucker Capital', 'https://www.mucker.com/', 'Los Angeles, CA', 'Erik Rannala, MP, erik@mucker.com', 'met', '2022-01-05 00:00:00-05', 200, 1000, true, '{pre-seed,seed,A}', '{software,marketplaces,fintech}', '{pharma,"med device"}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (36, 'Plug and Play Ventures', 'https://www.plugandplaytechcenter.com/ventures/', 'Sunnyvale, CA', '$108k average check size. Jennifer Thomas, MD, jennifer@plugandplaytechcenter.com. Progress requirements: MVP built, some user data, ideally a pilot in the works or completed.', 'met', '2022-01-31 00:00:00-05', 25, 100, false, '{pre-seed,seed}', '{Fintech,Insurtech,"Internet of Things",iot,Mobility,Health,Retail,"Supply Chain Logistics",Food,Beverage,Travel,Hospitality,Energy,Sustainability,"Materials Packaging","Enterprise Tech",software,B2B,SaaS,"Real Estate","Construction Tech","Media Ad","Smart Cities",Sustainability,Agtech,Maritime,"Animal Health"}', '{edtech,sports,entertainment,HR,"med device"}', false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (37, 'Right Side Capital Management', 'http://rightsidecapital.com/', 'San Francisco, CA', 'Pre vc rounds, lower valuations to give teams runway to pre seed', 'met', '2022-02-02 00:00:00-05', 150, 300, true, '{pre-vc}', '{software}', '{hardware}', true, false, '{"low valuations"}', NULL, NULL, NULL);
INSERT INTO public.firms VALUES (41, 'twentytwo ventures', 'https://22ltd.com/#angel', 'Columbus, OH', NULL, 'met', '2021-11-01 00:00:00-04', 10, 200, true, '{pre-seed}', '{agnostic}', '{"med device",fintech}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (43, 'Urban Innovation Fund', 'https://www.urbaninnovationfund.com/', 'San Francisco, CA', 'invest in startups that improve the livability, sustainability, and economic vitality of cities: transportation, RE tech, food tech. Julie Lein, MD, julie@urbaninnovationfund.com', 'met', '2022-02-02 00:00:00-05', 300, 1500, true, '{pre-seed,seed}', '{transportation,sustainability,water,food,edtech,fintech,proptech,"small business enablement"}', '{GPG,"consumer packaged goods"}', false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (46, 'Wonder Ventures', 'https://wondervc.com/', 'Los Angeles, CA', '$100k - $300k check size', 'met', '2022-02-23 00:00:00-05', 50, 1000, NULL, '{pre-seed}', '{"B2B saas",software,"consumer software"}', '{healthcare,"med device"}', false, true, NULL, 5, 10, NULL);
INSERT INTO public.firms VALUES (47, 'IrishAngels', 'http://irishangels.com/', '415 N. LaSalle Dr. Suite 504, Chicago, IL 60654', 'We invest in US-based software, consumer products, and medical devices. Caroline Gash, MD, caroline@irishangels.com', 'met', '2022-05-05 00:00:00-04', 150, 500, false, '{seed}', '{agnostic,"consumer products",medtech,"med device",software}', '{vices}', true, true, '{"need to have someone committed (can be equity",notes,"or SAFEs)"}', NULL, NULL, NULL);
INSERT INTO public.firms VALUES (48, 'GoingVC Partners', 'https://www.goingvc.com/gvc-partners/', '845 Market St Suite 450, San Francisco, CA 94103', 'angel syndicate, invest as one entity to preserve cap table. Arno Niazi, founding partner, arno@goingvc.com', 'met', '2022-04-28 00:00:00-04', 50, 300, false, '{pre-seed}', '{agnostic}', '{"med device",hardware}', true, false, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (49, 'Accelerate Venture Partners', 'https://www.avpict.com/', '245 N. Waco, Ste# 230A Wichita, KS 67202 USA', 'We invest in early-stage, high growth companies in Wichita and the Midwest. We are a collaborative group of active investors from diverse professional and industry backgrounds. Providing more than just money, we bring connections, knowledge, mentoring and operational assistance to bold early-stage entrepreneurs with game-changing ideas.', 'met', '2022-08-22 00:00:00-04', 100, 300, false, '{seed}', '{agnostic}', '{"med device",biotech}', true, false, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (51, 'XRC Labs', 'https://www.xrclabs.com/', '68 5th Ave, Fl 3 New York, NY 10011', 'Have 3 funds. Acc/pre seed takes 4-8% equity via direct equity + SAFE, other two are traditional equity but later stage. Pano Anthos, MD, pano@xrclabs.com', 'met', '2022-05-25 00:00:00-04', 500, 2000, false, '{pre-seed,seed,A}', '{consumer,"consumer products","med device",software,"supply chain",logistics}', '{}', false, true, NULL, 4, 20, NULL);
INSERT INTO public.firms VALUES (52, 'Hyde Park Venture Partners', 'https://hydeparkvp.com/', '415 N LaSalle St, Chicago, Illinois 60654, USA', 'We invest in B2B SaaS, marketplaces, tech-enabled services, and B2C software based in the US Midwest, Toronto, and Atlanta from idea stage through $2M+ in ARR.', 'met', '2022-05-20 00:00:00-04', 500, 3500, true, '{pre-seed,seed,A}', '{software}', '{}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (53, 'Darling Ventures', 'https://www.darlingventures.com/', 'USA', NULL, 'met', NULL, 100, 750, true, '{pre-seed,seed}', '{software,data,automation}', '{}', false, NULL, NULL, 5, NULL, NULL);
INSERT INTO public.firms VALUES (44, 'Urban Us', 'https://urban.us/', 'San Francisco, CA', 'Invest in startups that improve cities and prepare for climate change.', 'warm', '2022-01-14 00:00:00-05', 10, 100, NULL, NULL, '{agnostic}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (45, 'Village Global', 'https://www.villageglobal.vc/', 'San Francisco, CA', NULL, 'warm', '2022-01-31 00:00:00-05', 10, 100, NULL, '{pre-seed,seed}', '{agnostic}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (50, 'One Way Labs', 'http://www.onewaylabs.com/', '3333 Piedmont Rd, Suite 2050, Atlanta, GA 30305', 'We invest in early stage startups and build software in exchange for equity. We look for non-technical founders who hold deep domain expertise, solving important problems without their own development team or technical co-founder.', 'warm', NULL, 10, 100, NULL, NULL, '{agnostic}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (1021, 'Test 1', 'test1.com', 'NY', 'asdf', 'Met', '2022-08-12 00:00:00-04', 100, 2500, false, '{pre-seed,seed}', '{"med tech",healthcare}', '{"med device"}', false, true, '{}', 1, 5, 1);
INSERT INTO public.firms VALUES (1022, 'Test 2', 'test1.com', 'NY', 'asdf', 'Met', '2022-08-12 00:00:00-04', 100, 2500, false, '{pre-seed,seed}', '{"med tech",healthcare}', '{}', false, true, '{}', 1, 5, 1);
INSERT INTO public.firms VALUES (1023, 'Test 2', 'test1.com', 'NY', 'asdf', 'Met', '2022-08-12 00:00:00-04', 100, 2500, false, '{pre-seed,seed}', '{software,b2b}', '{hardware}', false, true, '{}', 1, 5, 1);
INSERT INTO public.firms VALUES (1024, 'Test 2', 'test1.com', 'NY', 'asdf', 'Met', '2022-08-12 00:00:00-04', 100, 2500, false, '{pre-seed,seed}', '{"med device"}', '{}', false, true, '{}', 1, 5, 1);
INSERT INTO public.firms VALUES (1025, 'Test 2', 'test1.com', 'NY', 'asdf', 'Met', '2022-08-12 00:00:00-04', 100, 2500, false, '{pre-seed,seed}', '{"med device"}', '{"med tech"}', false, true, '{}', 1, 5, 1);
INSERT INTO public.firms VALUES (2, 'Advantage Sports Fund', 'https://www.advantagesportsfund.com/', 'Global', 'John from 22ventures also a decision maker for advantage', 'met', '2022-01-14 00:00:00-05', 1000, 3000, true, '{A}', '{sports,"sports tech",health,fitness}', '{}', true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (12, 'BootstrapLabs', 'https://bootstraplabs.com/', 'San Francisco, CA', 'AI only. Target 20% ownership, and invest between seed and A, around $5-6M. No rev needed, just traction.', 'met', '2022-01-11 00:00:00-05', 5000, 6000, true, '{seed,A}', '{AI}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (5, 'Andav Capital', 'http://andavcapital.com/', 'New York, NY', NULL, 'warm', '2021-12-09 00:00:00-05', 10, 100, NULL, NULL, '{agnostic}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (6, 'BAM Ventures', 'https://www.bam.vc/', 'Los Angeles, CA', 'Consumer focused, will look at B2B with consumer angle. 50MM fund, 300-750k checks, 500k average. Want to invest at inflection/hypergrowth point, need to raise to grow. Richard Jun, MP, richard@bam.vc', 'met', '2021-11-18 00:00:00-05', 300, 750, NULL, '{pre-seed,seed}', '{consumer}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (7, 'Surface VC', 'https://surface.vc', 'New York, NY', '50MM fund under a new name, investing in B2B SaaS with check sizes 250k-2MM', 'met', '2021-11-10 00:00:00-05', 250, 2000, NULL, '{pre-seed,seed}', '{"B2B SaaS"}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (9, 'Bee Partners', 'https://www.beepartners.vc/', 'San Francisco, CA', 'Forgot we existed, sent Afters team through their generic intake form', 'met', '2021-12-09 00:00:00-05', 100, 1000, NULL, '{pre-seed,seed}', '{marketplaces,AI,robotics,"synthetic bio",enterprise,manufacturing,agritech}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (10, 'Betaworks Ventures', 'https://betaworksventures.com/', 'New York, NY', 'Typical check size: $100,000 - $500,000. Invest in augmented reality, computer vision, voice interfaces, conversational software. Rarely invest pre-product', 'met', '2021-11-10 00:00:00-05', 100, 500, NULL, '{pre-seed,seed}', '{web3,"no code",AI,consumer,AR,"computer vision","voice interfaces"}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (11, 'Boost VC', 'https://www.boost.vc/', 'San Mateo, CA', 'Adam Draper, MD, adam@boost.vc. Typically invest through SAFEs', 'met', '2022-03-17 00:00:00-04', 500, 500, false, '{pre-seed}', '{crypto,AR,VR,"deep tech",hardware}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (15, 'Cofounders Capital', 'http://cofounderscapital.com/', 'Cary, NC', 'Active investors, B2B SaaS, prefer enterprise over SMB. 1/4-1/3 of investments are pre rev, rest around 50-100k ARR. 500k-1.5M initial check, 2-5M in reserve. NC focused due to locality of connections. David Gardner, partner, david@cofounderscapital.com', 'met', '2021-11-16 00:00:00-05', 500, 1500, true, '{pre-seed,seed}', '{"B2B SaaS"}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (22, 'Ground Up Ventures', 'https://www.groundup.vc/', 'New York, NY', '$500k - 1.3M checks in pre-seed and seed. Focuses on proptech, fintech, ecommerce, will look at anything', 'met', '2022-01-24 00:00:00-05', 500, 1500, true, '{pre-seed,seed}', '{agnostic,proptech,fintech,ecommerce}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (24, 'Hustle Fund', 'https://www.hustlefund.vc/', 'San Carlos, CA', 'Shiyan Koh, MP, shiyan@hustlefundvc.com', 'met', '2022-01-26 00:00:00-05', 25, 25, false, '{pre-seed}', '{software,services}', '{}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (33, 'New Stack Ventures', 'http://www.newstack.vc/', 'Chicago, IL', 'pre-seed to seed (0-500k arr) stage focus. 200k-2M checks, will lead and co lead, shoot for 15% ownership at entry. Revenue is a bonus, not a requirement. Software focused, will look at software-enabled hardtech. Nick Moran, partner, nick@newstack.com', 'met', '2022-01-05 00:00:00-05', 200, 2000, true, '{pre-seed,seed}', '{software}', '{}', false, NULL, NULL, NULL, 15, NULL);
INSERT INTO public.firms VALUES (35, 'Pathbreaker Ventures', 'https://www.pathbreakervc.com', 'San Francisco, CA', NULL, 'met', '2022-01-19 00:00:00-05', 250, 1000, true, '{pre-seed,seed,A,B,C}', '{robotics,sensors,AI,ML,"deep learning","reinforcement learning","computer vision","natural language processing","natural language understanding","computational biology",VR,AR}', '{}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (38, 'Story Ventures', 'https://storyventures.vc/', 'New York, NY', 'Reach out end of Feb once new acc analyst is hired. tend to invest in the commercialization of deep tech, versus the development. So we will be less likely to invest in a new sensor, and more likely to invest in companies leveraging new sensors to build a b2b/b2c application.', 'met', '2022-02-07 00:00:00-05', 500, 2000, true, '{pre-seed,seed}', '{AI,sensors,data}', '{}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (39, 'Supernode Ventures', 'http://supernode.vc/', 'New York, NY', 'Laurel Touby, MP, laurel@supernode.vc', 'warm', '2022-02-21 00:00:00-05', 50, 100, NULL, NULL, '{agnostic}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (42, 'Unshackled Ventures', 'https://www.unshackledvc.com/', 'San Francisco, CA', 'Fund immigrant founders - no matter their work authorization status. pre-revenue, pre-product, pre-incorporation', 'met', '2022-02-02 00:00:00-05', 300, 500, true, '{pre-seed,"company formation"}', '{agnostic}', '{}', false, true, '{"International citizen founder"}', NULL, NULL, NULL);
INSERT INTO public.firms VALUES (54, 'Hemisphere Venture', 'https://www.hemisphere.com', 'USA', 'Lisa Rich, MP, lisa.rich@hemisphere.com', 'met', '2022-06-02 00:00:00-04', 500, 1000, true, '{pre-seed,seed,A}', '{software,"deep tech",ai,"software enabled hardware",drones,space,nanotech}', '{}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (55, 'LDV Capital', 'https://www.ldv.co/', '111 East 14th Street, #102, New York, NY 10003, USA', 'We invest in visual technology startups in the very earliest of stages (we often invest pre-incorporation) across sectors and industries in North America, Europe, and Israel. brian@ldv.co, analyst. Prefer priced equity rounds', 'met', '2022-05-04 00:00:00-04', 500, 1200, true, '{pre-seed,seed}', '{"visual tech",AR,VR,"computer vision",radar}', '{}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (58, 'Big Idea Ventures', 'https://bigideaventures.com/', 'USA', 'Find IP in universities (OSU is OH partner) and build a team around the new co along with strategics. More of a partnership than an investor connect', 'met', '2022-08-04 00:00:00-04', 1000, 1000, true, NULL, '{ag,food,protein}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (59, 'Altair Capital', 'https://altair.vc/', 'Israel', NULL, 'warm', '2022-08-15 00:00:00-04', 100, 3000, true, NULL, '{fintech,"e commerce",productivity}', '{}', true, NULL, '{"5k MRR minimum"}', NULL, NULL, NULL);
INSERT INTO public.firms VALUES (60, 'Tenzing.vc', 'https://tenzing.vc', '245 N. Waco, Ste# 230A Wichita, KS 67202 USA', NULL, 'met', '2022-08-08 00:00:00-04', 100, 250, NULL, NULL, '{"b2b saas",software}', '{}', true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (14, 'Charge Ventures', 'http://www.charge.vc/', 'New York, NY', NULL, 'warm', '2021-11-10 00:00:00-05', 10, 100, NULL, NULL, '{agnostic}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (13, 'Cantos Ventures', 'http://cantos.vc/', 'San Francisco, CA', NULL, 'met', '2022-01-11 00:00:00-05', 400, 1000, true, '{pre-seed,seed}', '{climate,materials,chips,defense,robots,defense,"next generation computing"}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (19, 'Floodgate', 'https://floodgate.com/', 'San Francisco, CA', 'passed on leaf, scope, nelderm. Trying to get Bounce intro call set up', 'warm', '2022-02-22 00:00:00-05', 10, 100, NULL, NULL, '{consumer,crypto,enterprise,fintech,healthcare}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (20, 'Fusion Fund', 'https://www.fusionfund.com/', 'Palo Alto, CA', '1-3M, 1:2 ratio. ', 'met', '2021-12-03 00:00:00-05', 250, 3000, true, '{pre-seed,seed,A}', '{"industrial automation",healthcare}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (23, 'Homebrew', 'https://homebrew.co/', 'San Francisco, CA', NULL, 'met', '2021-12-01 00:00:00-05', 750, 2000, true, '{seed}', '{agnostic}', '{}', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (25, 'January Ventures', 'https://www.january.ventures/', 'Boston, MA', 'Sent list of cos on 1/20/22. Unclear what sector focus, check size, investment criteria are', 'met', '2022-02-07 00:00:00-05', 100, 1000, NULL, NULL, '{agnostic}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (26, 'K50 Ventures', 'https://www.k50ventures.com/', 'New York, NY', 'Invest in health, finance, education, housing, future of work. $250k max checks in pre-seed/seed', 'warm', '2021-12-31 00:00:00-05', 10, 100, NULL, NULL, '{agnostic}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (31, 'Maven Ventures', 'https://mavenventures.com/', 'Palo Alto, CA', 'jim@mavenventures.com, MP', 'warm', '2022-01-27 00:00:00-05', 100, 1000, NULL, '{seed}', '{"consumer software"}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (34, 'Panache Ventures', 'https://www.panache.vc', 'Montreal, Quebec, Canada', '$250k - $500k size checks
Only investing very selectively in US with fund II starting mid 2022', 'warm', '2021-12-14 00:00:00-05', 10, 100, NULL, NULL, '{agnostic}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (40, 'TMV', 'https://tmv.vc/', 'New York, NY', 'Soraya Darabi, founding partner, soraya@tmv.vc', 'met', '2022-01-14 00:00:00-05', 1000, 2000, true, '{seed,A}', '{healthcare,finance,logistics,"future of work"}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (56, 'Monochrome Capital', 'http://www.monochrome.vc/', 'San Francisco CA 94114, USA', 'We invest in early-stage software and AI-driven startups that are solving the toughest business challenges.', 'warm', NULL, 10, 100, NULL, NULL, '{"cloud infrastructure","machine learning platforms",APIs,"dev tools",web3}', '{}', false, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.firms VALUES (57, 'Cultivian Sandbox Ventures', 'https://cultiviansbx.com', 'USA', NULL, 'met', '2022-08-22 00:00:00-04', 500, 6000, true, '{seed,A}', '{healthcare,insurance,sustainability,food,ag}', '{}', false, NULL, NULL, NULL, NULL, NULL);


--
-- TOC entry 3370 (class 0 OID 25957)
-- Dependencies: 217
-- Data for Name: introductions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3372 (class 0 OID 25965)
-- Dependencies: 219
-- Data for Name: investors; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.investors VALUES (1, 'terry', 'pterry', 'terrypterry@vc.com', 'https://linkedin.com/terrypterry', 1);
INSERT INTO public.investors VALUES (5, 'adny', 'adny', 'floop@roop.com', 'linkedin.com/adnya;lsnf', 1001);
INSERT INTO public.investors VALUES (2, 'adnyloota', 'adnyloota', 'floop@roope.com', 'linkedin.com/adnyasdfa;lsnf', 1001);


--
-- TOC entry 3373 (class 0 OID 25971)
-- Dependencies: 220
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.session VALUES ('DS9mQ6kB2o8S-jpl5biUvzFUJkvY2KaJ', '{"cookie":{"originalMaxAge":3600000,"expires":"2022-09-15T18:57:32.804Z","secure":false,"httpOnly":false,"path":"/","sameSite":"lax"},"authenticated":true,"user":{"userId":1}}', '2022-09-15 14:57:33-04');


--
-- TOC entry 3375 (class 0 OID 25979)
-- Dependencies: 222
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, '1', '100', false);


--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 210
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.companies_id_seq', 9, true);


--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 212
-- Name: firms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.firms_id_seq', 1025, true);


--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 214
-- Name: founders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.founders_id_seq', 3, true);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 216
-- Name: introductions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.introductions_id_seq', 6, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 218
-- Name: investors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.investors_id_seq', 5, true);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 7, true);


-- Completed on 2022-09-15 14:06:11

--
-- PostgreSQL database dump complete
--

