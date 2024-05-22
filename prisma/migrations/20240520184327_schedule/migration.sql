-- CreateTable
CREATE TABLE `specialty` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `type` VARCHAR(30) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `specialty_medic` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `years` INTEGER NULL,
    `specialty_id` INTEGER NOT NULL,
    `psychologist_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `schedule` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `time` TIME NULL,
    `smedic_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `specialty_medic` ADD CONSTRAINT `specialty_medic_specialty_id_fkey` FOREIGN KEY (`specialty_id`) REFERENCES `specialty`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `specialty_medic` ADD CONSTRAINT `specialty_medic_psychologist_id_fkey` FOREIGN KEY (`psychologist_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `schedule` ADD CONSTRAINT `schedule_smedic_id_fkey` FOREIGN KEY (`smedic_id`) REFERENCES `specialty_medic`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
