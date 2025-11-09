# Legal-Case05_OCR-Name-Standardization_MySQL
CREATE TABLE legal_case_participants (
    case_id INT,
    case_number VARCHAR(20),
    participant_id INT PRIMARY KEY,
    participant_name VARCHAR(150),
    participant_type VARCHAR(50),
    case_role VARCHAR(100)
);

INSERT INTO legal_case_participants (case_id, case_number, participant_id, participant_name, participant_type, case_role) VALUES
-- Case 1 - Ontario
(1, '2024-ON-004512', 1, 'LIAM BROWN   ', 'defendant', 'Primary accused'),
(1, '2024-ON-004512', 2, 'noah carter  ', 'defendant', 'Secondary accused'),
(1, '2024-ON-004512', 3, 'BENJAMIN CLARKE ', 'defendant', 'Accused party'),
(1, '2024-ON-004512', 4, 'olivia white   ', 'witness', 'Key witness'),
(1, '2024-ON-004512', 5, 'SOPHIA TURNER ', 'plaintiff', 'Lead plaintiff'),

-- Case 2 - British Columbia
(2, '2024-BC-001233', 6, 'JACKSON WRIGHT   ', 'defendant', 'Primary accused'),
(2, '2024-BC-001233', 7, 'lucas walker     ', 'defendant', 'Accused party'),
(2, '2024-BC-001233', 8, 'MASON PARKER ', 'defendant', 'Accused party'),
(2, '2024-BC-001233', 9, 'charlotte hughes ', 'witness', 'Reporting witness'),
(2, '2024-BC-001233', 10, 'AVA MITCHELL ', 'legal_counsel', 'Defense counsel'),

-- Case 3 - Quebec
(3, '2023-QC-009881', 11, 'émile gagnon   ', 'defendant', 'Primary accused'),
(3, '2023-QC-009881', 12, 'RENÉ BOUCHER   ', 'defendant', 'Accused party'),
(3, '2023-QC-009881', 13, 'françois dubois  ', 'defendant', 'Accused party'),
(3, '2023-QC-009881', 14, 'ÉLISE TREMBLAY  ', 'witness', 'Key witness'),
(3, '2023-QC-009881', 15, 'chloé morin  ', 'plaintiff', 'Lead plaintiff'),
(3, '2023-QC-009881', 16, 'MARC-ANDRÉ LEBLANC ', 'legal_counsel', 'Plaintiff counsel'),
(3, '2023-QC-009881', 17, 'louis pelletier   ', 'defendant', 'Accused party'),
(3, '2023-QC-009881', 18, 'NICOLAS LAVOIE  ', 'defendant', 'Accused party'),
(3, '2023-QC-009881', 19, 'mathieu roy   ', 'defendant', 'Accused party'),
(3, '2023-QC-009881', 20, 'AURÉLIE FORTIN ', 'witness', 'Statement witness'),

-- Case 4 - Ontario
(4, '2024-ON-004513', 21, 'ETHAN MILLER   ', 'defendant', 'Primary accused'),
(4, '2024-ON-004513', 22, 'logan adams ', 'defendant', 'Accused party'),
(4, '2024-ON-004513', 23, 'JACOB HALL', 'defendant', 'Accused party'),
(4, '2024-ON-004513', 24, 'HARPER KING   ', 'witness', 'Key witness'),
(4, '2024-ON-004513', 25, 'grace turner', 'plaintiff', 'Lead plaintiff'),

-- Case 5 - British Columbia
(5, '2024-BC-001234', 26, 'AIDEN SCOTT   ', 'defendant', 'Primary accused'),
(5, '2024-BC-001234', 27, 'gabriel murphy ', 'defendant', 'Accused party'),
(5, '2024-BC-001234', 28, 'HUNTER REED   ', 'defendant', 'Accused party'),
(5, '2024-BC-001234', 29, 'ella cooper', 'witness', 'Reporting witness'),
(5, '2024-BC-001234', 30, 'MAYA BROOKS   ', 'legal_counsel', 'Defense counsel'),

-- Case 6 - Quebec
(6, '2023-QC-009882', 31, 'jérémy parent   ', 'defendant', 'Primary accused'),
(6, '2023-QC-009882', 32, 'LUC DESCHAMPS  ', 'defendant', 'Accused party'),
(6, '2023-QC-009882', 33, 'alexandre caron ', 'defendant', 'Accused party'),
(6, '2023-QC-009882', 34, 'ÉLODIE BRIÈRE  ', 'witness', 'Key witness'),
(6, '2023-QC-009882', 35, 'camille giroux   ', 'plaintiff', 'Lead plaintiff'),

-- Case 7 - Ontario
(7, '2024-ON-004514', 36, 'WYATT FOSTER ', 'defendant', 'Primary accused'),
(7, '2024-ON-004514', 37, 'owen simmons  ', 'defendant', 'Accused party'),
(7, '2024-ON-004514', 38, 'CALEB PALMER   ', 'defendant', 'Accused party'),
(7, '2024-ON-004514', 39, 'chloe bennett ', 'witness', 'Key witness'),
(7, '2024-ON-004514', 40, 'MADISON PRICE  ', 'plaintiff', 'Lead plaintiff'),

-- Case 8 - British Columbia
(8, '2024-BC-001235', 41, 'LEO HAYES   ', 'defendant', 'Primary accused'),
(8, '2024-BC-001235', 42, 'isaac barnes   ', 'defendant', 'Accused party'),
(8, '2024-BC-001235', 43, 'JULIAN ROSS ', 'defendant', 'Accused party'),
(8, '2024-BC-001235', 44, 'nora walsh   ', 'witness', 'Reporting witness'),
(8, '2024-BC-001235', 45, 'STELLA BOYD   ', 'legal_counsel', 'Defense counsel'),

-- Case 9 - Quebec
(9, '2023-QC-009883', 46, 'étienne belanger  ', 'defendant', 'Primary accused'),
(9, '2023-QC-009883', 47, 'MATHIS PERREAULT   ', 'defendant', 'Accused party'),
(9, '2023-QC-009883', 48, 'antoine martel ', 'defendant', 'Accused party'),
(9, '2023-QC-009883', 49, 'MAËLLE RENAUD ', 'witness', 'Key witness'),
(9, '2023-QC-009883', 50, 'zoé charest   ', 'plaintiff', 'Lead plaintiff'),

-- Case 10 - Ontario
(10, '2024-ON-004515', 51, 'NOLAN RUSSELL ', 'defendant', 'Primary accused'),
(10, '2024-ON-004515', 52, 'dominic hayes   ', 'defendant', 'Accused party'),
(10, '2024-ON-004515', 53, 'EVAN FISHER   ', 'defendant', 'Accused party'),
(10, '2024-ON-004515', 54, 'lily shaw', 'witness', 'Key witness'),
(10, '2024-ON-004515', 55, 'HANNAH BLACK   ', 'plaintiff', 'Lead plaintiff'),

-- Case 11 - British Columbia
(11, '2024-BC-001236', 56, 'ADAM STONE  ', 'defendant', 'Primary accused'),
(11, '2024-BC-001236', 57, 'ryan page   ', 'defendant', 'Accused party'),
(11, '2024-BC-001236', 58, 'COLTON WADE ', 'defendant', 'Accused party'),
(11, '2024-BC-001236', 59, 'avery moore  ', 'witness', 'Reporting witness'),
(11, '2024-BC-001236', 60, 'RILEY HAYES ', 'legal_counsel', 'Defense counsel'),

-- Case 12 - Quebec
(12, '2023-QC-009884', 61, 'jean-philippe moreau   ', 'defendant', 'Primary accused'),
(12, '2023-QC-009884', 62, 'OLIVIER BOULANGER', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 63, 'théo grenier  ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 64, 'ÉLIANE PAQUETTE ', 'witness', 'Key witness'),
(12, '2023-QC-009884', 65, 'mélodie carrière ', 'plaintiff', 'Lead plaintiff'),
(12, '2023-QC-009884', 66, 'JULIEN RENAUD   ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 67, 'alexandre brière  ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 68, 'LUDOVIC LAMBERT   ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 69, 'émilia st-pierre   ', 'witness', 'Key witness'),
(12, '2023-QC-009884', 70, 'noémie picard', 'plaintiff', 'Lead plaintiff'),
(12, '2023-QC-009884', 71, 'SAMUEL LEFEBVRE   ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 72, 'maxime côté  ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 73, 'FÉLIX GERVAIS ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 74, 'adèle gendreau', 'witness', 'Key witness'),
(12, '2023-QC-009884', 75, 'LÉA MARTINEAU ', 'plaintiff', 'Lead plaintiff'),
(12, '2023-QC-009884', 76, 'damien cloutier   ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 77, 'XAVIER OUELLET ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 78, 'jonathan descoteaux   ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 79, 'ÉLODIE GALIPEAU ', 'witness', 'Statement witness'),
(12, '2023-QC-009884', 80, 'laurence poirier ', 'plaintiff', 'Lead plaintiff'),
(12, '2023-QC-009884', 81, 'GABRIEL TRUDEAU   ', 'defendant', 'Primary accused'),
(12, '2023-QC-009884', 82, 'romain vaillancourt  ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 83, 'THIERRY GAGNÉ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 84, 'émilie barrette ', 'witness', 'Key witness'),
(12, '2023-QC-009884', 85, 'MORGNE DUHAMEL ', 'plaintiff', 'Lead plaintiff'),
(12, '2023-QC-009884', 86, 'charles fortier   ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 87, 'MATHIEU DESJARDINS   ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 88, 'guillaume lapointe  ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 89, 'ANAÏS LAROCHE ', 'witness', 'Statement witness'),
(12, '2023-QC-009884', 90, 'océane paradis  ', 'plaintiff', 'Lead plaintiff'),
(12, '2023-QC-009884', 91, 'LOÏC MERCIER   ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 92, 'jordan beaulieu ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 93, 'PASCAL ROBERT ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 94, 'maude cormier ', 'witness', 'Key witness'),
(12, '2023-QC-009884', 95, 'ARIANE BLOUIN  ', 'plaintiff', 'Lead plaintiff'),
(12, '2023-QC-009884', 96, 'yannick godin  ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 97, 'ALEXIS BOUCHER   ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 98, 'kevin gendron   ', 'defendant', 'Accused party'),
(12, '2023-QC-009884', 99, 'SARAH LAMOUREUX', 'witness', 'Key witness'),
(12, '2023-QC-009884', 100, 'juliette vaudreuil   ', 'plaintiff', 'Lead plaintiff');