SELECT * FROM data_cleaning.`layoffs rawfile`;

## to delete duplicate from the dataset

CREATE TABLE `layoffwork` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO layoffwork
SELECT *, ROW_NUMBER() OVER( PARTITION BY 
	company, 
    location, 
    industry, 
    total_laid_off, 
    percentage_laid_off, 
    `date`, 
    stage, 
    country, 
    funds_raised_millions) AS row_num
FROM layoffsrawfile;

DELETE FROM layoffwork
WHERE row_num > 1;

## standadization of each column

UPDATE layoffwork
SET company = TRIM(company);

UPDATE layoffwork
SET location = TRIM(location);

UPDATE layoffwork
SET industry = TRIM(industry);
UPDATE layoffwork
SET industry = 'Not Provided'
WHERE industry = '';
UPDATE layoffwork
SET industry = NULL
WHERE industry = 'Not Provided';

UPDATE layoffwork
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';

UPDATE layoffwork
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

ALTER TABLE layoffwork
MODIFY COLUMN `date` DATE;

## repopulation of NULL values 

SELECT t1.industry, t2.industry
FROM layoffwork AS t1
JOIN layoffwork AS t2
	on t1.company = t2.company
WHERE t1.industry is NULL AND
t2.industry is NOT NULL;

UPDATE layoffwork AS t1
JOIN layoffwork AS t2
	on t1.company = t2.company
SET t1.industry = t2.industry
WHERE t1.industry is NULL AND
t2.industry is NOT NULL;

ALTER TABLE layoffwork
DROP COLUMN row_num;

select * from layoffwork;


















