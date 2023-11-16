-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 09:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor_patient_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Patient_Id` int(100) NOT NULL,
  `Patient_Name` varchar(100) NOT NULL,
  `Doctor_Id` int(100) NOT NULL,
  `Doctor_Name` varchar(200) NOT NULL,
  `Appointment_Date` text NOT NULL,
  `Appointment_Time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Patient_Id`, `Patient_Name`, `Doctor_Id`, `Doctor_Name`, `Appointment_Date`, `Appointment_Time`) VALUES
(101, 'Sathi Sayma Rahman', 107, 'Dr. Ranjon Roy', '0000-00-00', '5 pm'),
(102, 'Mahbuba Mim', 102, 'Dr. M. M. Jahangir Alam', '13/08/2022', '6 pm'),
(103, 'Shorna Zaman', 104, 'Prof. Dr. Mahjuba Umme Salam', '12/8/2022', '7 pm'),
(104, 'Aysha Siddikie', 104, 'Prof. Dr. Mahjuba Umme Salam', '13/8/2022', '5 pm'),
(105, 'Sharmin Sultana', 102, 'Dr. M. M. Jahangir Alam', '12/08/2022', '8 pm'),
(106, 'Sayma Sultana', 109, 'Kishowar Parvin', '14/08/2022', '5 pm'),
(107, 'Minara Haque', 101, 'Prof. Dr. Md. Faizul Islam Chowdhury', '15/08/2022', '6 pm'),
(108, 'Shahida Khanom', 103, 'Dr. Shishir Basak', '17/08/2022', '9 pm'),
(109, 'Rahul Sharma', 105, 'Dr. Mohammad Golam Rob Shoyeb', '13/08/2022', '4 pm'),
(110, 'Sormila Zaman', 109, 'Kishowar Parvin', '13/08/2022', '7 pm');

-- --------------------------------------------------------

--
-- Table structure for table `ask_question`
--

CREATE TABLE `ask_question` (
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` text NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ask_question`
--

INSERT INTO `ask_question` (`name`, `email`, `subject`, `question`) VALUES
('Shreya Chowdhury', 'shreya123@gmail.com', 'typhoid', 'Which medicine should I take for getting rid of typhoid?');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` text NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`name`, `email`, `subject`, `msg`) VALUES
('Sayma Zaman', 'saymazaman@gmail.com', 'Error', 'Why I am getting this issue while updating my profile?');

-- --------------------------------------------------------

--
-- Table structure for table `disease_info`
--

CREATE TABLE `disease_info` (
  `disease_id` int(20) NOT NULL,
  `disease_name` varchar(30) NOT NULL,
  `disease_type` varchar(60) NOT NULL,
  `disease_description` text NOT NULL,
  `disease_cause` text NOT NULL,
  `disease_advise` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease_info`
--

INSERT INTO `disease_info` (`disease_id`, `disease_name`, `disease_type`, `disease_description`, `disease_cause`, `disease_advise`) VALUES
(101, 'Diabetes', 'Physiological Classification', 'This type includes diseases that affect a process or a function (such as metabolism, digestion or respiration)', 'These diseases are caused by pathogens, but other factors such as age, nutritional deficiency, gender of an individual, and lifestyle also influence the disease. ', 'Blood contains plasma, white blood cells, platelets and red blood cells. When any of these components are affected, it can lead to blood disorders. For instance, red blood cells are destroyed when a person contracts sickle cell disease. The red blood cells are distorted into the shape of a sickle (hence, the name) and they lose their ability to carry oxygen. Consequently, this disease is characterized by symptoms similar to chronic anaemia, such as shortness of breath and tiredness.'),
(102, 'An ENT specialist (Ear-Nose-Th', 'Topographical Classification', 'Further classified into types such as vascular disease, chest disease, gastrointestinal disease, and abdominal diseases. These are then handled by specializations in medicine that follow these topographical classifications', 'Further classified into types such as vascular disease, chest disease, gastrointestinal disease, and abdominal diseases. These are then handled by specializations in medicine that follow these topographical classifications', 'Further classified into types such as vascular disease, chest disease, gastrointestinal disease, and abdominal diseases. These are then handled by specializations in medicine that follow these topographical classifications'),
(103, 'Heart disease', 'Anatomic Classification', 'This type refers to the affected organ or tissue', 'This type refers to the affected organ or tissue', 'This type refers to the affected organ or tissue'),
(104, 'Neoplastic diseases (uncontrol', 'Pathological Classification', 'This type considers the nature of the disease. For instance, cancer is associated with uncontrolled cell growth, and there are variations or types in the disease.', 'This type considers the nature of the disease. For instance, cancer is associated with uncontrolled cell growth, and there are variations or types in the disease.', 'This type considers the nature of the disease. For instance, cancer is associated with uncontrolled cell growth, and there are variations or types in the disease.'),
(105, 'Epidemic diseases such as the ', 'Epidemiological Classification', 'This classification refers to the rate of occurrence, distribution and the control of the disease in a population.', 'This classification refers to the rate of occurrence, distribution and the control of the disease in a population.', 'This classification refers to the rate of occurrence, distribution and the control of the disease in a population.'),
(106, 'Cholera', 'Infectious Diseases', 'Diseases that spread from one person to another are called communicable diseases. They are usually caused by microorganisms called pathogens (fungi, rickettsia, bacteria, viruses, protozoans, and worms). When an infected person discharges bodily fluids, pathogens may exit the host and infect a new person (sneezing, coughing etc).', 'Diseases that spread from one person to another are called communicable diseases. They are usually caused by microorganisms called pathogens (fungi, rickettsia, bacteria, viruses, protozoans, and worms). When an infected person discharges bodily fluids, pathogens may exit the host and infect a new person (sneezing, coughing etc).', 'Diseases that spread from one person to another are called communicable diseases. They are usually caused by microorganisms called pathogens (fungi, rickettsia, bacteria, viruses, protozoans, and worms). When an infected person discharges bodily fluids, pathogens may exit the host and infect a new person (sneezing, coughing etc).'),
(107, 'chickenpox', 'Infectious Diseases', 'Diseases that spread from one person to another are called communicable diseases. They are usually caused by microorganisms called pathogens (fungi, rickettsia, bacteria, viruses, protozoans, and worms). When an infected person discharges bodily fluids, pathogens may exit the host and infect a new person (sneezing, coughing etc).', 'Diseases that spread from one person to another are called communicable diseases. They are usually caused by microorganisms called pathogens (fungi, rickettsia, bacteria, viruses, protozoans, and worms). When an infected person discharges bodily fluids, pathogens may exit the host and infect a new person (sneezing, coughing etc).', 'Diseases that spread from one person to another are called communicable diseases. They are usually caused by microorganisms called pathogens (fungi, rickettsia, bacteria, viruses, protozoans, and worms). When an infected person discharges bodily fluids, pathogens may exit the host and infect a new person (sneezing, coughing etc).'),
(108, ' malaria', 'Infectious Diseases', 'Diseases that spread from one person to another are called communicable diseases. They are usually caused by microorganisms called pathogens (fungi, rickettsia, bacteria, viruses, protozoans, and worms). When an infected person discharges bodily fluids, pathogens may exit the host and infect a new person (sneezing, coughing etc)', 'Diseases that spread from one person to another are called communicable diseases. They are usually caused by microorganisms called pathogens (fungi, rickettsia, bacteria, viruses, protozoans, and worms). When an infected person discharges bodily fluids, pathogens may exit the host and infect a new person (sneezing, coughing etc)', 'Diseases that spread from one person to another are called communicable diseases. They are usually caused by microorganisms called pathogens (fungi, rickettsia, bacteria, viruses, protozoans, and worms). When an infected person discharges bodily fluids, pathogens may exit the host and infect a new person (sneezing, coughing etc)'),
(109, 'asthma', 'Non-infectious Diseases', 'These diseases are caused by pathogens, but other factors such as age, nutritional deficiency, gender of an individual, and lifestyle also influence the disease. Examples include hypertension, diabetes, and cancer. They do not spread to others and they restrain within a person who has contracted them. Alzheimer’s disease, asthma, cataract and heart diseases are other non-infectious diseases', 'These diseases are caused by pathogens, but other factors such as age, nutritional deficiency, gender of an individual, and lifestyle also influence the disease. Examples include hypertension, diabetes, and cancer. They do not spread to others and they restrain within a person who has contracted them. Alzheimer’s disease, asthma, cataract and heart diseases are other non-infectious diseases', 'These diseases are caused by pathogens, but other factors such as age, nutritional deficiency, gender of an individual, and lifestyle also influence the disease. Examples include hypertension, diabetes, and cancer. They do not spread to others and they restrain within a person who has contracted them. Alzheimer’s disease, asthma, cataract and heart diseases are other non-infectious diseases'),
(110, ' leukaemia', 'Blood Diseases', 'Blood contains plasma, white blood cells, platelets and red blood cells. When any of these components are affected, it can lead to blood disorders. For instance, red blood cells are destroyed when a person contracts sickle cell disease. The red blood cells are distorted into the shape of a sickle (hence, the name) and they lose their ability to carry oxygen. Consequently, this disease is characterized by symptoms similar to chronic anaemia, such as shortness of breath and tiredness.', 'Blood contains plasma, white blood cells, platelets and red blood cells. When any of these components are affected, it can lead to blood disorders. For instance, red blood cells are destroyed when a person contracts sickle cell disease. The red blood cells are distorted into the shape of a sickle (hence, the name) and they lose their ability to carry oxygen. Consequently, this disease is characterized by symptoms similar to chronic anaemia, such as shortness of breath and tiredness.', 'Blood contains plasma, white blood cells, platelets and red blood cells. When any of these components are affected, it can lead to blood disorders. For instance, red blood cells are destroyed when a person contracts sickle cell disease. The red blood cells are distorted into the shape of a sickle (hence, the name) and they lose their ability to carry oxygen. Consequently, this disease is characterized by symptoms similar to chronic anaemia, such as shortness of breath and tiredness.');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_info`
--

CREATE TABLE `doctor_info` (
  `Id` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Specialization` varchar(200) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_info`
--

INSERT INTO `doctor_info` (`Id`, `Name`, `Specialization`, `Address`) VALUES
(101, 'Prof. Dr. Md. Faizul Islam Chowdhury', 'Medicine Specialists', 'Sylhet'),
(102, 'Dr. M. M. Jahangir Alam', 'Medicine Specialists', 'Dhaka'),
(103, 'Dr. Shishir Basak', 'Neurologists', 'Feni'),
(104, 'Prof. Dr. Mahjuba Umme Salam', 'Cardiologists', 'Khulna'),
(105, 'Dr. Mohammad Golam Rob Shoyeb', 'Medicine & Rheumatology Specialist', 'Rajshahi'),
(106, 'Prof. Dr. M. A. Ahbab', 'Medicine, Liver & Diabetes Specialist', 'Sylhet'),
(107, 'Dr. Ranjon Roy', 'Medicine Specialists', 'Dhaka'),
(108, 'Dr. Bilkis Sultana', 'Medicine Specialists', 'Sylhet'),
(109, 'Kishowar Parvin', 'Medicine Specialists', 'Dhaka'),
(110, 'Dr Mahmuda Khan', 'Medicine Specialists', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `Id` int(20) NOT NULL,
  `Patient_Name` varchar(20) NOT NULL,
  `Disease_Id` int(20) NOT NULL,
  `Doctor_Id` int(20) NOT NULL,
  `Test_Id` varchar(20) DEFAULT NULL,
  `Medicine_Id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`Id`, `Patient_Name`, `Disease_Id`, `Doctor_Id`, `Test_Id`, `Medicine_Id`) VALUES
(101, 'Sayma Haque', 103, 102, '105', 102),
(102, 'Keya Rahman', 104, 101, '102', 108),
(103, 'Sishir Saha', 107, 106, '102', 103),
(104, 'Mishti Chowdhury', 108, 102, '106', 106),
(105, 'Sajeda Shammi', 109, 110, '110', 105),
(106, 'Tanvia Promi', 101, 101, '101', 103),
(107, 'Oridha Munni', 104, 110, '107', 106),
(108, 'Farhana Shammi', 103, 104, '104', 102),
(109, 'Saba Farha', 107, 107, '105', 107),
(110, 'Selina Parvin', 105, 106, '106', 101),
(111, 'Nisfa Nuha', 103, 104, '104', 104),
(112, 'Sheikh Nuva', 107, 102, '101', 107),
(113, 'Kamrunnahar Naima', 109, 103, '103', 103),
(114, 'Muntakima Islam', 103, 103, '103', 104),
(115, 'Mithila Haque', 109, 109, '103', 102);

-- --------------------------------------------------------

--
-- Table structure for table `signuptable`
--

CREATE TABLE `signuptable` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signuptable`
--

INSERT INTO `signuptable` (`email`, `password`, `name`, `id`) VALUES
('sajidashammi@gmail.com', 's12344', 'SajidaShammi', 1),
('SaymaRahman@gmail.com', 'saymarahman', 'Sayma Rahman', 2),
('SathiSanjida@gmail.com', 'kljhm!23', 'Sathi Sanjida', 3),
('Kamrunnahar@gmail.com', 'apj23jk', 'Kamrunnahar Keya', 4),
('SheikhNUva@gamil.com', 'qwerty', 'Sheikh Nuva', 5),
('HafsaRahman@gmail.com', 'poiuyt', 'Hafsa Rahman', 6),
('MahmudaMasuma@gmail.com', 'mnbvcx', 'Mahmuda Masuma', 7),
('LubnaHaque@gmail.com', 'asdfghj', 'Lubna Haque', 8),
('OveshikPaul@gmail.com', 'jklopsad', 'Ovishek Paul', 9),
('Shahriarsunil@gmail.com', 'hhhghlui', 'Sunil Shahriar', 10),
('nuranijannat@gmail.com', 'nurani kl', 'Nurani Jannat', 11),
('mousumiroy@gmail.com', 'asbnm123', 'Mousumi Roy', 12);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_id` int(10) NOT NULL,
  `test_name` text NOT NULL,
  `test_info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `test_name`, `test_info`) VALUES
(101, 'Endoscopy', 'endoscopy, medical examination of the interior of the body, usually through a natural body opening, by the insertion of a flexible, lighted optical shaft or open tube. Instruments used include the endoscope, a flexible tube for examination of the esophagus, stomach, and duodenum, and the bronchoscope, a flexible tube for examination of the bronchial tubes.'),
(102, 'Biopsy', 'biopsy, medical diagnostic procedure in which cells or tissues are removed from a patient and examined visually, usually with a microscope. The material for the biopsy may be obtained by several methods and with various instruments, including aspiration through a needle, swabbing with a sponge, scraping with a curette, trephining a bone, or excision with forceps or an electric snare. The biopsy is a standard step in the diagnosis of both malignant and benign tumours and can also provide a wide range of other types of diagnostic information, particularly in connection with certain organs, such as the liver or the pancreas.'),
(103, 'Laparoscopy', 'laparoscopy, also called peritoneoscopy, procedure that permits visual examination of the abdominal cavity with an optical instrument called a laparoscope, which is inserted through a small incision made in the abdominal wall. The term comes from the Greek words laparo, meaning “flank,” and skopein, meaning “to examine.”'),
(104, 'Semen analysis', 'semen analysis, laboratory examination of a sample of seminal fluid, usually consisting of the determination of semen volume, alkalinity or acidity (pH), sperm number (or sperm count), and the motility, shape, and viability of sperm. An examination of seminal fluid is usually undertaken to check for possible male infertility. In addition to obtaining a complete history, performing a physical examination of both partners, and verifying that ovulation does occur in the woman, the physician will perform a semen analysis. '),
(105, 'Skin test', 'skin test, introduction of a specific test substance into the skin of an individual, either by injection or by scratching the skin, to determine that individual’s possible allergy to certain substances or his susceptibility or immunity to certain diseases. A skin test is usually considered positive when the skin becomes red and swollen at the site of contact with the test material and is considered negative when there is no skin reaction'),
(106, 'Colposcopy', 'olposcopy, medical examination of the epithelial tissues of the cervix, vagina, and vulva with a special lighted magnifying instrument called a colposcope. Colposcopy is used when the Papanicolaou test (or Pap smear; cervicovaginal cytology) suggests the possibility of cancer of the uterine cervix'),
(107, 'Toxicological examination', 'toxicological examination, medical inspection of an individual who is, or is suspected of being, poisoned. In most poisoning cases, the toxic agent is known, and the physician’s main concern is to determine the degree of exposure. In cases involving ingestion of unlabelled prescriptions or trade-name household products, the identification of the precise toxic chemical may present a major problem.'),
(108, 'Uroscopy', 'uroscopy, medical examination of the urine in order to facilitate the diagnosis of a disease or disorder. Examining the urine is one of the oldest forms of diagnostic testing, extending back to the days of the ancient Greek physician Hippocrates. Physicians observed the urine to diagnose all forms of illness because direct examination of a patient, or at least disrobing the patient, was socially unacceptable.'),
(109, 'Electrocardiography', 'electrocardiography, method of graphic tracing (electrocardiogram; ECG or EKG) of the electric current generated by the heart muscle during a heartbeat. The tracing is recorded with an electrocardiograph (actually a relatively simple string galvanometer), and it provides information on the condition and performance of the heart.'),
(110, 'Ultrasound', 'ultrasound, also called ultrasonography, in medicine, the use of high-frequency sound (ultrasonic) waves to produce images of structures within the human body. Ultrasonic waves are sound waves that are above the range of sound audible to humans. The ultrasonic waves are produced by the electrical stimulation of a piezoelectric crystal and can be aimed at a specific area of the body.');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `medicine_id` int(20) NOT NULL,
  `medicine_name` varchar(200) NOT NULL,
  `medicine_description` text NOT NULL,
  `medicine_dose` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`medicine_id`, `medicine_name`, `medicine_description`, `medicine_dose`) VALUES
(101, 'Minocycline', 'Minocycline is used to treat many different bacterial infections, such as urinary tract infections, respiratory infections, skin infections, severe acne, chlamydia, tick fever, and others. It is also used for gonorrhoea, syphilis, and other infections as a second-line drug in those with a penicillin allergy.', '3 per day'),
(102, 'Dupixent', 'Dupixent is a prescription medicine that works by blocking two proteins that contribute to a type of inflammation that plays a major role in atopic dermatitis, asthma, and chronic rhinosinusitis with nasal polyposis.', '2 dose per day'),
(103, 'Adderall', 'Adderall is used to treat attention deficit hyperactivity disorder (ADHD) and narcolepsy. Adderall contains a combination of amphetamine and dextroamphetamine. Amphetamine and dextroamphetamine are central nervous system stimulants that affect chemicals in the brain and nerves that contribute to hyperactivity and impulse control.', '2 dose per day'),
(104, 'Ativan ', 'Ativan belongs to a group of drugs called benzodiazepines (ben-zoe-dye-AZE-eh-peens). It is thought that lorazepam works by enhancing the activity of certain neurotransmitters in the brain.', '2 dose per day'),
(105, 'Farxiga', 'Farxiga is an oral diabetes medicine that helps control blood sugar levels. Dapagliflozin works by helping the kidneys get rid of glucose from your bloodstream.\r\n\r\nFarxiga is used together with diet and exercise to improve blood sugar control in adults with type 2 diabetes mellitus. This medicine is not for treating type 1 diabetes.', '3 dose per day'),
(106, 'Lyrica', 'Lyrica was originally FDA approved as an anti-epileptic drug, also called an anticonvulsant. It works by slowing down impulses in the brain that cause seizures. Pregabalin also affects chemicals in the brain that send pain signals across the nervous system.', '2 dose per day'),
(107, 'Secukinumab', 'Secukinumab is an immunosuppressant medicine that reduces the effects of a chemical substance in the body that can cause inflammation. It is used to improve the symptoms of some types of autoimmune conditions such as ankylosing spondylitis, chronic plaque psoriasis, psoriatic arthritis, non-radiographic axial spondyloarthritis and enthesitis-related arthritis.', '3 dose per day'),
(108, 'Meloxicam', 'Meloxicam is a nonsteroidal anti-inflammatory drug (NSAID). It works by reducing hormones that cause inflammation and pain in the body. Meloxicam is used to treat pain or inflammation caused by rheumatoid arthritis and osteoarthritis in adults.\r\n\r\n', '2 dose per day'),
(109, 'Sublocade', 'Sublocade is an opioid medication, sometimes called a narcotic.\r\n\r\nSublocade injection is used to treat opioid addiction. It is not for use as a pain medication.\r\n\r\nSublocade is given to people who have started addiction treatment with an oral form of buprenorphine placed under the tongue or inside the cheek', '3 dose per day'),
(110, 'Naltrexone', 'Naltrexone blocks the effects of opioid medication, including pain relief or feelings of well-being that can lead to opioid abuse. An opioid is sometimes called a narcotic. Vivitrol is used as part of a treatment program for drug or alcohol dependence.', '2 dose per day');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `Id` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Specialization` varchar(200) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verification`
--

INSERT INTO `verification` (`Id`, `Name`, `Specialization`, `image`) VALUES
(101, 'Mahmuda Khan', 'Medicine Specialists', 'image/d.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease_info`
--
ALTER TABLE `disease_info`
  ADD PRIMARY KEY (`disease_id`);

--
-- Indexes for table `doctor_info`
--
ALTER TABLE `doctor_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `signuptable`
--
ALTER TABLE `signuptable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`medicine_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `signuptable`
--
ALTER TABLE `signuptable`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
