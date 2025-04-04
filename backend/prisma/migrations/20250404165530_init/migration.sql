/*
  Warnings:

  - You are about to drop the `booking` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `event` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `history` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `moviedata` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `movies` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `review` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user_data` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user_table` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user_table_2` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "booking" DROP CONSTRAINT "booking_movie_id_fkey";

-- DropForeignKey
ALTER TABLE "history" DROP CONSTRAINT "history_event_id_fkey";

-- DropForeignKey
ALTER TABLE "history" DROP CONSTRAINT "history_movie_id_fkey";

-- DropForeignKey
ALTER TABLE "history" DROP CONSTRAINT "history_user_id_fkey";

-- DropForeignKey
ALTER TABLE "moviedata" DROP CONSTRAINT "moviedata_movie_id_fkey";

-- DropForeignKey
ALTER TABLE "review" DROP CONSTRAINT "review_event_id_fkey";

-- DropForeignKey
ALTER TABLE "review" DROP CONSTRAINT "review_movie_id_fkey";

-- DropForeignKey
ALTER TABLE "review" DROP CONSTRAINT "review_user_id_fkey";

-- DropTable
DROP TABLE "booking";

-- DropTable
DROP TABLE "event";

-- DropTable
DROP TABLE "history";

-- DropTable
DROP TABLE "moviedata";

-- DropTable
DROP TABLE "movies";

-- DropTable
DROP TABLE "review";

-- DropTable
DROP TABLE "user_data";

-- DropTable
DROP TABLE "user_table";

-- DropTable
DROP TABLE "user_table_2";
