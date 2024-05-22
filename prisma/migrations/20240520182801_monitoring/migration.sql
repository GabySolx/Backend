-- CreateTable
CREATE TABLE `progress_notes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `date` DATETIME(3) NOT NULL,
    `notes` TEXT NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `update_at` DATETIME(3) NULL,
    `patient_id` INTEGER NOT NULL,
    `psychologist_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `emotional_entries` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `date` DATETIME(3) NOT NULL,
    `emotion` VARCHAR(500) NOT NULL,
    `intensity` INTEGER NOT NULL,
    `created_at` DATETIME(3) NULL,
    `update_at` DATETIME(3) NOT NULL,
    `patient_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `progress_notes` ADD CONSTRAINT `progress_notes_patient_id_fkey` FOREIGN KEY (`patient_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `progress_notes` ADD CONSTRAINT `progress_notes_psychologist_id_fkey` FOREIGN KEY (`psychologist_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `emotional_entries` ADD CONSTRAINT `emotional_entries_patient_id_fkey` FOREIGN KEY (`patient_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
