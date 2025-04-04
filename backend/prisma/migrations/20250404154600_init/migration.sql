-- CreateTable
CREATE TABLE "booking" (
    "booking_id" SERIAL NOT NULL,
    "movie_id" INTEGER NOT NULL,
    "place" VARCHAR(50) NOT NULL,
    "seat" JSONB NOT NULL,
    "time" VARCHAR(50) NOT NULL,

    CONSTRAINT "booking_pkey" PRIMARY KEY ("booking_id")
);

-- CreateTable
CREATE TABLE "event" (
    "event_id" SERIAL NOT NULL,
    "event_name" VARCHAR(100) NOT NULL,
    "event_date" DATE NOT NULL,
    "event_location" VARCHAR(100) NOT NULL,
    "event_description" VARCHAR(255) NOT NULL,
    "event_image_url" VARCHAR(255) NOT NULL,
    "evnet_genre" VARCHAR(50) NOT NULL,

    CONSTRAINT "event_pkey" PRIMARY KEY ("event_id")
);

-- CreateTable
CREATE TABLE "history" (
    "history_id" SERIAL NOT NULL,
    "user_id" INTEGER,
    "movie_id" INTEGER,
    "event_id" INTEGER,
    "price" DECIMAL(10,2),

    CONSTRAINT "history_pkey" PRIMARY KEY ("history_id")
);

-- CreateTable
CREATE TABLE "moviedata" (
    "create_id" SERIAL NOT NULL,
    "movie_id" INTEGER NOT NULL,
    "location" VARCHAR(50) NOT NULL,
    "place" VARCHAR(50) NOT NULL,
    "seat" JSONB NOT NULL,

    CONSTRAINT "moviedata_pkey" PRIMARY KEY ("create_id")
);

-- CreateTable
CREATE TABLE "movies" (
    "movie_id" SERIAL NOT NULL,
    "title" VARCHAR(100) NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "release_date" DATE NOT NULL,
    "location" VARCHAR(100) NOT NULL,
    "genre" VARCHAR(50) NOT NULL,
    "rating" DECIMAL(3,1),
    "image_url" TEXT NOT NULL,

    CONSTRAINT "movies_pkey" PRIMARY KEY ("movie_id")
);

-- CreateTable
CREATE TABLE "review" (
    "review_id" SERIAL NOT NULL,
    "user_id" INTEGER NOT NULL,
    "movie_id" INTEGER,
    "event_id" INTEGER,
    "review" VARCHAR(255) NOT NULL,
    "rating" DECIMAL(3,1) NOT NULL,

    CONSTRAINT "review_pkey" PRIMARY KEY ("review_id")
);

-- CreateTable
CREATE TABLE "user_data" (
    "user_id" SERIAL NOT NULL,
    "full_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "favorite" VARCHAR(255) NOT NULL,
    "gender" VARCHAR(50) NOT NULL,
    "designation" VARCHAR(250) NOT NULL,

    CONSTRAINT "user_data_pkey" PRIMARY KEY ("user_id")
);

-- CreateTable
CREATE TABLE "user_table" (
    "user_id" SERIAL NOT NULL,
    "full_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "location" VARCHAR(100) NOT NULL,
    "password" VARCHAR(100) NOT NULL,

    CONSTRAINT "user_table_pkey" PRIMARY KEY ("user_id")
);

-- CreateTable
CREATE TABLE "user_table_2" (
    "user_id" SERIAL NOT NULL,
    "full_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "password" VARCHAR(100) NOT NULL,

    CONSTRAINT "user_table_2_pkey" PRIMARY KEY ("user_id")
);

-- CreateTable
CREATE TABLE "user_create" (
    "email" VARCHAR(100) NOT NULL,
    "password" VARCHAR(100) NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "booking_movie_id_place_time_key" ON "booking"("movie_id", "place", "time");

-- CreateIndex
CREATE UNIQUE INDEX "user_data_email_key" ON "user_data"("email");

-- CreateIndex
CREATE UNIQUE INDEX "user_table_email_key" ON "user_table"("email");

-- CreateIndex
CREATE UNIQUE INDEX "user_table_2_email_key" ON "user_table_2"("email");

-- CreateIndex
CREATE UNIQUE INDEX "user_create_email_key" ON "user_create"("email");

-- AddForeignKey
ALTER TABLE "booking" ADD CONSTRAINT "booking_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "history" ADD CONSTRAINT "history_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "event"("event_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "history" ADD CONSTRAINT "history_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "history" ADD CONSTRAINT "history_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user_table"("user_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "moviedata" ADD CONSTRAINT "moviedata_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "review" ADD CONSTRAINT "review_event_id_fkey" FOREIGN KEY ("event_id") REFERENCES "event"("event_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "review" ADD CONSTRAINT "review_movie_id_fkey" FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "review" ADD CONSTRAINT "review_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "user_table"("user_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
